#!/bin/sh

set -o errexit
cd "$(dirname "${BASH_SOURCE}")/.."

source ./scripts/common.sh

# The docroot of the built website.
build_dir="public"

# The S3 bucket and path to publish to.
destination_bucket="www-$(date '+%Y%m%d%H%M%S')-$(git rev-list --abbrev-commit HEAD | head -1)"
destination_bucket_uri="s3://${destination_bucket}"

# Verify index.html exists in the root.
if [ ! -f "$build_dir/index.html" ]; then
    echo "Missing root index.html. See the archive extraction log above for details."
    exit 1
fi

# Verify we have at least 1000 index.html files in total across the site.
if [ ! "$(find $build_dir -type f | grep index.html | wc -l)" -ge 1000 ]; then
    echo "Page-count check failed. See the archive extraction log above for details."
    exit 1
fi

# Log in and select the target stack.
run_pulumi_login
run_pulumi_stack_select

# Translate Hugo redirects into 301s.
node scripts/translate-redirects.js "$build_dir" "$(run_pulumi_config get redirectDomain)"

# Read the region from the stack's config -- we use it below.
aws_region="$(run_pulumi_config get 'aws:region')"

# Push remaining content to the site bucket. Note we do not pass the --delete option to
# s3 sync, which means that files in the s3 bucket that aren't in the local build will be
# left in the bucket.
echo "Synchronizing to $destination_bucket_uri..."
aws s3 mb $destination_bucket_uri --region $aws_region
aws s3 website $destination_bucket_uri --index-document index.html --error-document 404.html
aws s3 sync "$build_dir" "$destination_bucket_uri" --acl public-read

echo "Sync complete."
s3_website_url="http://${destination_bucket}.s3-website.${aws_region}.amazonaws.com"
echo "$s3_website_url"

# Create an S3 object for each of the items in the redirect list so it returns a 301
# redirect (instead of serving the HTML with a meta-redirect). This ensures the right HTTP
# response code is returned for search engines and enables better support for URL anchors.
echo "Processing S3 redirects..."
IFS="|"
while read key location; do
    echo "Redirecting $key to $location (${destination_bucket})"
    aws s3api put-object --key "$key" --website-redirect-location "$location" --bucket "$destination_bucket" --acl public-read
done < $build_dir/redirects.txt

# # Set the content-type of latest-version explicitly. (Otherwise, it'll be set as binary/octet-stream.)
aws s3 cp "$build_dir/latest-version" "${destination_bucket_uri}/latest-version" \
    --content-type "text/plain" --acl public-read --metadata-directive REPLACE

# Smoke test the deployed website -- this'll be the final product, so make sure it works!
CYPRESS_BASE_URL="${s3_website_url}" yarn run cypress run --headless

# Assuming it did, set the destination_bucket on the Pulumi stack's config.
run_pulumi_config set destinationBucket "$destination_bucket"

# Yay.
echo "Done! Bucket website is now available at ${s3_website_url}."
