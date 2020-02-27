---
title: "Topic"
---

<!-- WARNING: this file was generated by the Pulumi Terraform Bridge (tfgen) Tool. -->
<!-- Do not edit by hand unless you're certain you know what you are doing! -->

<style>
  table td p { margin-top: 0; margin-bottom: 0; }
</style>

Provides an SNS topic resource

## Message Delivery Status Arguments

The `<endpoint>_success_feedback_role_arn` and `<endpoint>_failure_feedback_role_arn` arguments are used to give Amazon SNS write access to use CloudWatch Logs on your behalf. The `<endpoint>_success_feedback_sample_rate` argument is for specifying the sample rate percentage (0-100) of successfully delivered messages. After you configure the  `<endpoint>_failure_feedback_role_arn` argument, then all failed message deliveries generate CloudWatch Logs.

> This content is derived from https://github.com/terraform-providers/terraform-provider-aws/blob/master/website/docs/r/sns_topic.html.markdown.


## Create a Topic Resource

{{< langchoose csharp >}}

<div class="highlight"><pre class="chroma"><code class="language-typescript" data-lang="typescript"><span class="k">new</span> <span class="nx"><a href=/docs/reference/pkg/nodejs/pulumi/aws/s3/#Topic>Topic</a></span><span class="p">(</span><span class="nx">name</span>: <span class="kt"><a href=https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/String>string</a></span><span class="p">,</span> <span class="nx">args?</span>: <span class="kt"><a href=/docs/reference/pkg/nodejs/pulumi/aws/s3/#TopicArgs>TopicArgs</a></span><span class="p">,</span> <span class="nx">opts?</span>: <span class="kt"><a href=/docs/reference/pkg/nodejs/pulumi/pulumi/#CustomResourceOptions>pulumi.CustomResourceOptions</a></span><span class="p">);</span></code></pre></div>

```python
def __init__(__self__, resource_name, opts=None, application_failure_feedback_role_arn=None, application_success_feedback_role_arn=None, application_success_feedback_sample_rate=None, delivery_policy=None, display_name=None, http_failure_feedback_role_arn=None, http_success_feedback_role_arn=None, http_success_feedback_sample_rate=None, kms_master_key_id=None, lambda_failure_feedback_role_arn=None, lambda_success_feedback_role_arn=None, lambda_success_feedback_sample_rate=None, name=None, name_prefix=None, policy=None, sqs_failure_feedback_role_arn=None, sqs_success_feedback_role_arn=None, sqs_success_feedback_sample_rate=None, tags=None, __props__=None)
```

```go
func NewTopic(ctx *pulumi.Context, name string, args *TopicArgs, opts ...pulumi.ResourceOption) (*Topic, error)

```

```csharp
public Topic(string name, TopicArgs? args = null, CustomResourceOptions? options = null)

```

Creates a Topic resource with the given unique name, arguments, and options.

{{% lang nodejs %}}
<ul class="pl-10">
    <li><strong>name</strong> &ndash; (Required) The unique name of the resulting resource.</li>
    <li><strong>args</strong> &ndash; (Optional) The arguments to use to populate this resource's properties.</li>
    <li><strong>opts</strong> &ndash; (Optional) A bag of options that control this resource's behavior.</li>
</ul>
{{% /lang %}}

{{% lang go %}}
<ul class="pl-10">
    <li><strong>name</strong> &ndash; (Required) The unique name of the resulting resource.</li>
    <li><strong>args</strong> &ndash; (Optional) The arguments to use to populate this resource's properties.</li>
    <li><strong>opts</strong> &ndash; (Optional) A bag of options that control this resource's behavior.</li>
</ul>
{{% /lang %}}

{{% lang csharp %}}
<ul class="pl-10">
    <li><strong>name</strong> &ndash; (Required) The unique name of the resulting resource.</li>
    <li><strong>args</strong> &ndash; (Optional) The arguments to use to populate this resource's properties.</li>
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
            <td class="align-top">application<wbr>Failure<wbr>Feedback<wbr>Role<wbr>Arn</td>
            <td class="align-top"><code>string</code></td>
            <td class="align-top">{{% md %}}
(Optional) IAM role for failure feedback

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">application<wbr>Success<wbr>Feedback<wbr>Role<wbr>Arn</td>
            <td class="align-top"><code>string</code></td>
            <td class="align-top">{{% md %}}
(Optional) The IAM role permitted to receive success feedback for this topic

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">application<wbr>Success<wbr>Feedback<wbr>Sample<wbr>Rate</td>
            <td class="align-top"><code>number</code></td>
            <td class="align-top">{{% md %}}
(Optional) Percentage of success to sample

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">delivery<wbr>Policy</td>
            <td class="align-top"><code>string</code></td>
            <td class="align-top">{{% md %}}
(Optional) The SNS delivery policy. More on [AWS documentation](https://docs.aws.amazon.com/sns/latest/dg/DeliveryPolicies.html)

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">display<wbr>Name</td>
            <td class="align-top"><code>string</code></td>
            <td class="align-top">{{% md %}}
(Optional) The display name for the SNS topic

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">http<wbr>Failure<wbr>Feedback<wbr>Role<wbr>Arn</td>
            <td class="align-top"><code>string</code></td>
            <td class="align-top">{{% md %}}
(Optional) IAM role for failure feedback

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">http<wbr>Success<wbr>Feedback<wbr>Role<wbr>Arn</td>
            <td class="align-top"><code>string</code></td>
            <td class="align-top">{{% md %}}
(Optional) The IAM role permitted to receive success feedback for this topic

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">http<wbr>Success<wbr>Feedback<wbr>Sample<wbr>Rate</td>
            <td class="align-top"><code>number</code></td>
            <td class="align-top">{{% md %}}
(Optional) Percentage of success to sample

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">kms<wbr>Master<wbr>Key<wbr>Id</td>
            <td class="align-top"><code>string</code></td>
            <td class="align-top">{{% md %}}
(Optional) The ID of an AWS-managed customer master key (CMK) for Amazon SNS or a custom CMK. For more information, see [Key Terms](https://docs.aws.amazon.com/sns/latest/dg/sns-server-side-encryption.html#sse-key-terms)

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">lambda<wbr>Failure<wbr>Feedback<wbr>Role<wbr>Arn</td>
            <td class="align-top"><code>string</code></td>
            <td class="align-top">{{% md %}}
(Optional) IAM role for failure feedback

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">lambda<wbr>Success<wbr>Feedback<wbr>Role<wbr>Arn</td>
            <td class="align-top"><code>string</code></td>
            <td class="align-top">{{% md %}}
(Optional) The IAM role permitted to receive success feedback for this topic

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">lambda<wbr>Success<wbr>Feedback<wbr>Sample<wbr>Rate</td>
            <td class="align-top"><code>number</code></td>
            <td class="align-top">{{% md %}}
(Optional) Percentage of success to sample

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">name</td>
            <td class="align-top"><code>string</code></td>
            <td class="align-top">{{% md %}}
(Optional) The friendly name for the SNS topic. By default generated by this provider.

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">name<wbr>Prefix</td>
            <td class="align-top"><code>string</code></td>
            <td class="align-top">{{% md %}}
(Optional) The friendly name for the SNS topic. Conflicts with `name`.

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">policy</td>
            <td class="align-top"><code>string</code></td>
            <td class="align-top">{{% md %}}
(Optional) 
{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">sqs<wbr>Failure<wbr>Feedback<wbr>Role<wbr>Arn</td>
            <td class="align-top"><code>string</code></td>
            <td class="align-top">{{% md %}}
(Optional) IAM role for failure feedback

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">sqs<wbr>Success<wbr>Feedback<wbr>Role<wbr>Arn</td>
            <td class="align-top"><code>string</code></td>
            <td class="align-top">{{% md %}}
(Optional) The IAM role permitted to receive success feedback for this topic

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">sqs<wbr>Success<wbr>Feedback<wbr>Sample<wbr>Rate</td>
            <td class="align-top"><code>number</code></td>
            <td class="align-top">{{% md %}}
(Optional) Percentage of success to sample

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">tags</td>
            <td class="align-top"><code>Map&lt;<wbr>any<wbr>&gt;</code></td>
            <td class="align-top">{{% md %}}
(Optional) Key-value mapping of resource tags

{{% /md %}}</td>
        </tr>
    </tbody>
</table>

## Topic Output Properties

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
            <td class="align-top">application<wbr>Failure<wbr>Feedback<wbr>Role<wbr>Arn</td>
            <td class="align-top"><code>string</code></td>
            <td class="align-top">{{% md %}}
IAM role for failure feedback

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">application<wbr>Success<wbr>Feedback<wbr>Role<wbr>Arn</td>
            <td class="align-top"><code>string</code></td>
            <td class="align-top">{{% md %}}
The IAM role permitted to receive success feedback for this topic

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">application<wbr>Success<wbr>Feedback<wbr>Sample<wbr>Rate</td>
            <td class="align-top"><code>number</code></td>
            <td class="align-top">{{% md %}}
Percentage of success to sample

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">arn</td>
            <td class="align-top"><code>ARN</code></td>
            <td class="align-top">{{% md %}}
The ARN of the SNS topic, as a more obvious property (clone of id)

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">delivery<wbr>Policy</td>
            <td class="align-top"><code>string</code></td>
            <td class="align-top">{{% md %}}
The SNS delivery policy. More on [AWS documentation](https://docs.aws.amazon.com/sns/latest/dg/DeliveryPolicies.html)

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">display<wbr>Name</td>
            <td class="align-top"><code>string</code></td>
            <td class="align-top">{{% md %}}
The display name for the SNS topic

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">http<wbr>Failure<wbr>Feedback<wbr>Role<wbr>Arn</td>
            <td class="align-top"><code>string</code></td>
            <td class="align-top">{{% md %}}
IAM role for failure feedback

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">http<wbr>Success<wbr>Feedback<wbr>Role<wbr>Arn</td>
            <td class="align-top"><code>string</code></td>
            <td class="align-top">{{% md %}}
The IAM role permitted to receive success feedback for this topic

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">http<wbr>Success<wbr>Feedback<wbr>Sample<wbr>Rate</td>
            <td class="align-top"><code>number</code></td>
            <td class="align-top">{{% md %}}
Percentage of success to sample

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">kms<wbr>Master<wbr>Key<wbr>Id</td>
            <td class="align-top"><code>string</code></td>
            <td class="align-top">{{% md %}}
The ID of an AWS-managed customer master key (CMK) for Amazon SNS or a custom CMK. For more information, see [Key Terms](https://docs.aws.amazon.com/sns/latest/dg/sns-server-side-encryption.html#sse-key-terms)

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">lambda<wbr>Failure<wbr>Feedback<wbr>Role<wbr>Arn</td>
            <td class="align-top"><code>string</code></td>
            <td class="align-top">{{% md %}}
IAM role for failure feedback

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">lambda<wbr>Success<wbr>Feedback<wbr>Role<wbr>Arn</td>
            <td class="align-top"><code>string</code></td>
            <td class="align-top">{{% md %}}
The IAM role permitted to receive success feedback for this topic

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">lambda<wbr>Success<wbr>Feedback<wbr>Sample<wbr>Rate</td>
            <td class="align-top"><code>number</code></td>
            <td class="align-top">{{% md %}}
Percentage of success to sample

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">name</td>
            <td class="align-top"><code>string</code></td>
            <td class="align-top">{{% md %}}
The friendly name for the SNS topic. By default generated by this provider.

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">name<wbr>Prefix</td>
            <td class="align-top"><code>string</code></td>
            <td class="align-top">{{% md %}}
The friendly name for the SNS topic. Conflicts with `name`.

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">policy</td>
            <td class="align-top"><code>string</code></td>
            <td class="align-top">{{% md %}}

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">sqs<wbr>Failure<wbr>Feedback<wbr>Role<wbr>Arn</td>
            <td class="align-top"><code>string</code></td>
            <td class="align-top">{{% md %}}
IAM role for failure feedback

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">sqs<wbr>Success<wbr>Feedback<wbr>Role<wbr>Arn</td>
            <td class="align-top"><code>string</code></td>
            <td class="align-top">{{% md %}}
The IAM role permitted to receive success feedback for this topic

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">sqs<wbr>Success<wbr>Feedback<wbr>Sample<wbr>Rate</td>
            <td class="align-top"><code>number</code></td>
            <td class="align-top">{{% md %}}
Percentage of success to sample

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">tags</td>
            <td class="align-top"><code>Map&lt;<wbr>any<wbr>&gt;</code></td>
            <td class="align-top">{{% md %}}
Key-value mapping of resource tags

{{% /md %}}</td>
        </tr>
    </tbody>
</table>

## Look up an Existing Topic Resource

{{< langchoose csharp >}}

```typescript
public static get(name: string, id: pulumi.Input<pulumi.ID>, state?: TopicState, opts?: pulumi.CustomResourceOptions): Topic;
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

Get an existing Topic resource's state with the given name, ID, and optional extra
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
            <td class="align-top">application<wbr>Failure<wbr>Feedback<wbr>Role<wbr>Arn</td>
            <td class="align-top"><code>string</code></td>
            <td class="align-top">{{% md %}}
(Optional) IAM role for failure feedback

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">application<wbr>Success<wbr>Feedback<wbr>Role<wbr>Arn</td>
            <td class="align-top"><code>string</code></td>
            <td class="align-top">{{% md %}}
(Optional) The IAM role permitted to receive success feedback for this topic

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">application<wbr>Success<wbr>Feedback<wbr>Sample<wbr>Rate</td>
            <td class="align-top"><code>number</code></td>
            <td class="align-top">{{% md %}}
(Optional) Percentage of success to sample

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">arn</td>
            <td class="align-top"><code>ARN</code></td>
            <td class="align-top">{{% md %}}
(Optional) The ARN of the SNS topic, as a more obvious property (clone of id)

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">delivery<wbr>Policy</td>
            <td class="align-top"><code>string</code></td>
            <td class="align-top">{{% md %}}
(Optional) The SNS delivery policy. More on [AWS documentation](https://docs.aws.amazon.com/sns/latest/dg/DeliveryPolicies.html)

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">display<wbr>Name</td>
            <td class="align-top"><code>string</code></td>
            <td class="align-top">{{% md %}}
(Optional) The display name for the SNS topic

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">http<wbr>Failure<wbr>Feedback<wbr>Role<wbr>Arn</td>
            <td class="align-top"><code>string</code></td>
            <td class="align-top">{{% md %}}
(Optional) IAM role for failure feedback

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">http<wbr>Success<wbr>Feedback<wbr>Role<wbr>Arn</td>
            <td class="align-top"><code>string</code></td>
            <td class="align-top">{{% md %}}
(Optional) The IAM role permitted to receive success feedback for this topic

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">http<wbr>Success<wbr>Feedback<wbr>Sample<wbr>Rate</td>
            <td class="align-top"><code>number</code></td>
            <td class="align-top">{{% md %}}
(Optional) Percentage of success to sample

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">kms<wbr>Master<wbr>Key<wbr>Id</td>
            <td class="align-top"><code>string</code></td>
            <td class="align-top">{{% md %}}
(Optional) The ID of an AWS-managed customer master key (CMK) for Amazon SNS or a custom CMK. For more information, see [Key Terms](https://docs.aws.amazon.com/sns/latest/dg/sns-server-side-encryption.html#sse-key-terms)

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">lambda<wbr>Failure<wbr>Feedback<wbr>Role<wbr>Arn</td>
            <td class="align-top"><code>string</code></td>
            <td class="align-top">{{% md %}}
(Optional) IAM role for failure feedback

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">lambda<wbr>Success<wbr>Feedback<wbr>Role<wbr>Arn</td>
            <td class="align-top"><code>string</code></td>
            <td class="align-top">{{% md %}}
(Optional) The IAM role permitted to receive success feedback for this topic

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">lambda<wbr>Success<wbr>Feedback<wbr>Sample<wbr>Rate</td>
            <td class="align-top"><code>number</code></td>
            <td class="align-top">{{% md %}}
(Optional) Percentage of success to sample

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">name</td>
            <td class="align-top"><code>string</code></td>
            <td class="align-top">{{% md %}}
(Optional) The friendly name for the SNS topic. By default generated by this provider.

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">name<wbr>Prefix</td>
            <td class="align-top"><code>string</code></td>
            <td class="align-top">{{% md %}}
(Optional) The friendly name for the SNS topic. Conflicts with `name`.

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">policy</td>
            <td class="align-top"><code>string</code></td>
            <td class="align-top">{{% md %}}
(Optional) 
{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">sqs<wbr>Failure<wbr>Feedback<wbr>Role<wbr>Arn</td>
            <td class="align-top"><code>string</code></td>
            <td class="align-top">{{% md %}}
(Optional) IAM role for failure feedback

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">sqs<wbr>Success<wbr>Feedback<wbr>Role<wbr>Arn</td>
            <td class="align-top"><code>string</code></td>
            <td class="align-top">{{% md %}}
(Optional) The IAM role permitted to receive success feedback for this topic

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">sqs<wbr>Success<wbr>Feedback<wbr>Sample<wbr>Rate</td>
            <td class="align-top"><code>number</code></td>
            <td class="align-top">{{% md %}}
(Optional) Percentage of success to sample

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">tags</td>
            <td class="align-top"><code>Map&lt;<wbr>any<wbr>&gt;</code></td>
            <td class="align-top">{{% md %}}
(Optional) Key-value mapping of resource tags

{{% /md %}}</td>
        </tr>
    </tbody>
</table>

## Import an Existing Topic Resource

TODO

## Support Types
