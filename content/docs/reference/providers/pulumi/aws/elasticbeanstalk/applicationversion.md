---
title: "ApplicationVersion"
---

<!-- WARNING: this file was generated by the Pulumi Terraform Bridge (tfgen) Tool. -->
<!-- Do not edit by hand unless you're certain you know what you are doing! -->

<style>
  table td p { margin-top: 0; margin-bottom: 0; }
</style>

Provides an Elastic Beanstalk Application Version Resource. Elastic Beanstalk allows
you to deploy and manage applications in the AWS cloud without worrying about
the infrastructure that runs those applications.

This resource creates a Beanstalk Application Version that can be deployed to a Beanstalk
Environment.

> **NOTE on Application Version Resource:**  When using the Application Version resource with multiple 
Elastic Beanstalk Environments it is possible that an error may be returned
when attempting to delete an Application Version while it is still in use by a different environment.
To work around this you can either create each environment in a separate AWS account or create your `aws.elasticbeanstalk.ApplicationVersion` resources with a unique names in your Elastic Beanstalk Application. For example &lt;revision&gt;-&lt;environment&gt;.

> This content is derived from https://github.com/terraform-providers/terraform-provider-aws/blob/master/website/docs/r/elastic_beanstalk_application_version.html.markdown.


## Create a ApplicationVersion Resource

{{< langchoose csharp >}}

<div class="highlight"><pre class="chroma"><code class="language-typescript" data-lang="typescript"><span class="k">new</span> <span class="nx"><a href=/docs/reference/pkg/nodejs/pulumi/aws/s3/#ApplicationVersion>ApplicationVersion</a></span><span class="p">(</span><span class="nx">name</span>: <span class="kt"><a href=https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/String>string</a></span><span class="p">,</span> <span class="nx">args</span>: <span class="kt"><a href=/docs/reference/pkg/nodejs/pulumi/aws/s3/#ApplicationVersionArgs>ApplicationVersionArgs</a></span><span class="p">,</span> <span class="nx">opts?</span>: <span class="kt"><a href=/docs/reference/pkg/nodejs/pulumi/pulumi/#CustomResourceOptions>pulumi.CustomResourceOptions</a></span><span class="p">);</span></code></pre></div>

```python
def __init__(__self__, resource_name, opts=None, application=None, bucket=None, description=None, force_delete=None, key=None, name=None, tags=None, __props__=None)
```

```go
func NewApplicationVersion(ctx *pulumi.Context, name string, args *ApplicationVersionArgs, opts ...pulumi.ResourceOption) (*ApplicationVersion, error)

```

```csharp
public ApplicationVersion(string name, ApplicationVersionArgs args, CustomResourceOptions? options = null)

```

Creates a ApplicationVersion resource with the given unique name, arguments, and options.

{{% lang nodejs %}}
<ul class="pl-10">
    <li><strong>name</strong> &ndash; (Required) The unique name of the resulting resource.</li>
    <li><strong>args</strong> &ndash; (Required) The arguments to use to populate this resource's properties.</li>
    <li><strong>opts</strong> &ndash; (Optional) A bag of options that control this resource's behavior.</li>
</ul>
{{% /lang %}}

{{% lang go %}}
<ul class="pl-10">
    <li><strong>name</strong> &ndash; (Required) The unique name of the resulting resource.</li>
    <li><strong>args</strong> &ndash; (Required) The arguments to use to populate this resource's properties.</li>
    <li><strong>opts</strong> &ndash; (Optional) A bag of options that control this resource's behavior.</li>
</ul>
{{% /lang %}}

{{% lang csharp %}}
<ul class="pl-10">
    <li><strong>name</strong> &ndash; (Required) The unique name of the resulting resource.</li>
    <li><strong>args</strong> &ndash; (Required) The arguments to use to populate this resource's properties.</li>
    <li><strong>opts</strong> &ndash; (Optional) A bag of options that control this resource's behavior.</li>
</ul>
{{% /lang %}}

The following arguments are supported:

<table class="ml-6">
    <thead>
        <tr>
            <th>Argument</th>
            <th>Type</th>
            <th>Description</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td class="align-top">application</td>
            <td class="align-top"><code>Application</code></td>
            <td class="align-top">{{% md %}}
(Required) Name of the Beanstalk Application the version is associated with.

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">bucket</td>
            <td class="align-top"><code>Union&lt;<wbr>string, <wbr>Bucket<wbr>&gt;</code></td>
            <td class="align-top">{{% md %}}
(Required) S3 bucket that contains the Application Version source bundle.

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">description</td>
            <td class="align-top"><code>string</code></td>
            <td class="align-top">{{% md %}}
(Optional) Short description of the Application Version.

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">force<wbr>Delete</td>
            <td class="align-top"><code>boolean</code></td>
            <td class="align-top">{{% md %}}
(Optional) On delete, force an Application Version to be deleted when it may be in use
by multiple Elastic Beanstalk Environments.

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">key</td>
            <td class="align-top"><code>string</code></td>
            <td class="align-top">{{% md %}}
(Required) S3 object that is the Application Version source bundle.

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">name</td>
            <td class="align-top"><code>string</code></td>
            <td class="align-top">{{% md %}}
(Optional) A unique name for the this Application Version.

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">tags</td>
            <td class="align-top"><code>Map&lt;<wbr>any<wbr>&gt;</code></td>
            <td class="align-top">{{% md %}}
(Optional) Key-value mapping of tags for the Elastic Beanstalk Application Version.

{{% /md %}}</td>
        </tr>
    </tbody>
</table>

## ApplicationVersion Output Properties

The following output properties are available:

<table class="ml-6">
    <thead>
        <tr>
            <th>Argument</th>
            <th>Type</th>
            <th>Description</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td class="align-top">application</td>
            <td class="align-top"><code>Application</code></td>
            <td class="align-top">{{% md %}}
Name of the Beanstalk Application the version is associated with.

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">arn</td>
            <td class="align-top"><code>string</code></td>
            <td class="align-top">{{% md %}}
The ARN assigned by AWS for this Elastic Beanstalk Application.

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">bucket</td>
            <td class="align-top"><code>string</code></td>
            <td class="align-top">{{% md %}}
S3 bucket that contains the Application Version source bundle.

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">description</td>
            <td class="align-top"><code>string</code></td>
            <td class="align-top">{{% md %}}
Short description of the Application Version.

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">force<wbr>Delete</td>
            <td class="align-top"><code>boolean</code></td>
            <td class="align-top">{{% md %}}
On delete, force an Application Version to be deleted when it may be in use
by multiple Elastic Beanstalk Environments.

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">key</td>
            <td class="align-top"><code>string</code></td>
            <td class="align-top">{{% md %}}
S3 object that is the Application Version source bundle.

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">name</td>
            <td class="align-top"><code>string</code></td>
            <td class="align-top">{{% md %}}
A unique name for the this Application Version.

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">tags</td>
            <td class="align-top"><code>Map&lt;<wbr>any<wbr>&gt;</code></td>
            <td class="align-top">{{% md %}}
Key-value mapping of tags for the Elastic Beanstalk Application Version.

{{% /md %}}</td>
        </tr>
    </tbody>
</table>

## Look up an Existing ApplicationVersion Resource

{{< langchoose csharp >}}

```typescript
public static get(name: string, id: pulumi.Input<pulumi.ID>, state?: ApplicationVersionState, opts?: pulumi.CustomResourceOptions): ApplicationVersion;
```

```python
def get(resource_name, id, opts=None, acceleration_status=None, acl=None, arn=None, bucket=None, bucket_domain_name=None, bucket_prefix=None, bucket_regional_domain_name=None, cors_rules=None, force_destroy=None, hosted_zone_id=None, lifecycle_rules=None, loggings=None, object_lock_configuration=None, policy=None, region=None, replication_configuration=None, request_payer=None, server_side_encryption_configuration=None, tags=None, versioning=None, website=None, website_domain=None, website_endpoint=None)
```

```go
func GetBucket(ctx *pulumi.Context, name string, id pulumi.IDInput, state *BucketState, opts ...pulumi.ResourceOption) (*Bucket, error)
```

```csharp
public static Bucket Get(string name, Input<string> id, BucketState? state = null, CustomResourceOptions? options = null);
```

Get an existing ApplicationVersion resource's state with the given name, ID, and optional extra
properties used to qualify the lookup.

{{% lang nodejs %}}
<ul class="pl-10">
    <li><strong>name</strong> &ndash; (Required) The unique name of the resulting resource.</li>
    <li><strong>id</strong> &ndash; (Required) The _unique_ provider ID of the resource to lookup.</li>
    <li><strong>state</strong> &ndash; (Optional) Any extra arguments used during the lookup.</li>
    <li><strong>opts</strong> &ndash; (Optional) A bag of options that control this resource's behavior.</li>
</ul>
{{% /lang %}}

{{% lang go %}}
<ul class="pl-10">
    <li><strong>name</strong> &ndash; (Required) The unique name of the resulting resource.</li>
    <li><strong>id</strong> &ndash; (Required) The _unique_ provider ID of the resource to lookup.</li>
    <li><strong>state</strong> &ndash; (Optional) Any extra arguments used during the lookup.</li>
    <li><strong>opts</strong> &ndash; (Optional) A bag of options that control this resource's behavior.</li>
</ul>
{{% /lang %}}

{{% lang csharp %}}
<ul class="pl-10">
    <li><strong>name</strong> &ndash; (Required) The unique name of the resulting resource.</li>
    <li><strong>id</strong> &ndash; (Required) The _unique_ provider ID of the resource to lookup.</li>
    <li><strong>state</strong> &ndash; (Optional) Any extra arguments used during the lookup.</li>
    <li><strong>opts</strong> &ndash; (Optional) A bag of options that control this resource's behavior.</li>
</ul>
{{% /lang %}}

The following state arguments are supported:

<table class="ml-6">
    <thead>
        <tr>
            <th>Argument</th>
            <th>Type</th>
            <th>Description</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td class="align-top">application</td>
            <td class="align-top"><code>Application</code></td>
            <td class="align-top">{{% md %}}
(Optional) Name of the Beanstalk Application the version is associated with.

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">arn</td>
            <td class="align-top"><code>string</code></td>
            <td class="align-top">{{% md %}}
(Optional) The ARN assigned by AWS for this Elastic Beanstalk Application.

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">bucket</td>
            <td class="align-top"><code>Union&lt;<wbr>string, <wbr>Bucket<wbr>&gt;</code></td>
            <td class="align-top">{{% md %}}
(Optional) S3 bucket that contains the Application Version source bundle.

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">description</td>
            <td class="align-top"><code>string</code></td>
            <td class="align-top">{{% md %}}
(Optional) Short description of the Application Version.

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">force<wbr>Delete</td>
            <td class="align-top"><code>boolean</code></td>
            <td class="align-top">{{% md %}}
(Optional) On delete, force an Application Version to be deleted when it may be in use
by multiple Elastic Beanstalk Environments.

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">key</td>
            <td class="align-top"><code>string</code></td>
            <td class="align-top">{{% md %}}
(Optional) S3 object that is the Application Version source bundle.

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">name</td>
            <td class="align-top"><code>string</code></td>
            <td class="align-top">{{% md %}}
(Optional) A unique name for the this Application Version.

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">tags</td>
            <td class="align-top"><code>Map&lt;<wbr>any<wbr>&gt;</code></td>
            <td class="align-top">{{% md %}}
(Optional) Key-value mapping of tags for the Elastic Beanstalk Application Version.

{{% /md %}}</td>
        </tr>
    </tbody>
</table>

## Import an Existing ApplicationVersion Resource

TODO

## Support Types
