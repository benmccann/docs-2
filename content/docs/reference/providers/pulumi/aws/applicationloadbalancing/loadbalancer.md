---
title: "LoadBalancer"
---

<!-- WARNING: this file was generated by the Pulumi Terraform Bridge (tfgen) Tool. -->
<!-- Do not edit by hand unless you're certain you know what you are doing! -->

<style>
  table td p { margin-top: 0; margin-bottom: 0; }
</style>

Provides a Load Balancer resource.

> **Note:** `aws.alb.LoadBalancer` is known as `aws.lb.LoadBalancer`. The functionality is identical.

> This content is derived from https://github.com/terraform-providers/terraform-provider-aws/blob/master/website/docs/r/lb.html.markdown.


## Create a LoadBalancer Resource

{{< langchoose csharp >}}

<div class="highlight"><pre class="chroma"><code class="language-typescript" data-lang="typescript"><span class="k">new</span> <span class="nx"><a href=/docs/reference/pkg/nodejs/pulumi/aws/s3/#LoadBalancer>LoadBalancer</a></span><span class="p">(</span><span class="nx">name</span>: <span class="kt"><a href=https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/String>string</a></span><span class="p">,</span> <span class="nx">args?</span>: <span class="kt"><a href=/docs/reference/pkg/nodejs/pulumi/aws/s3/#LoadBalancerArgs>LoadBalancerArgs</a></span><span class="p">,</span> <span class="nx">opts?</span>: <span class="kt"><a href=/docs/reference/pkg/nodejs/pulumi/pulumi/#CustomResourceOptions>pulumi.CustomResourceOptions</a></span><span class="p">);</span></code></pre></div>

```python
def __init__(__self__, resource_name, opts=None, access_logs=None, enable_cross_zone_load_balancing=None, enable_deletion_protection=None, enable_http2=None, idle_timeout=None, internal=None, ip_address_type=None, load_balancer_type=None, name=None, name_prefix=None, security_groups=None, subnet_mappings=None, subnets=None, tags=None, __props__=None)
```

```go
func NewLoadBalancer(ctx *pulumi.Context, name string, args *LoadBalancerArgs, opts ...pulumi.ResourceOption) (*LoadBalancer, error)

```

```csharp
public LoadBalancer(string name, LoadBalancerArgs? args = null, CustomResourceOptions? options = null)

```

Creates a LoadBalancer resource with the given unique name, arguments, and options.

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
            <td class="align-top">access<wbr>Logs</td>
            <td class="align-top"><code><a href="#loadbalanceraccesslogs">Load<wbr>Balancer<wbr>Access<wbr>Logs</a></code></td>
            <td class="align-top">{{% md %}}
(Optional) An Access Logs block. Access Logs documented below.

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">enable<wbr>Cross<wbr>Zone<wbr>Load<wbr>Balancing</td>
            <td class="align-top"><code>boolean</code></td>
            <td class="align-top">{{% md %}}
(Optional) If true, cross-zone load balancing of the load balancer will be enabled.
This is a `network` load balancer feature. Defaults to `false`.

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">enable<wbr>Deletion<wbr>Protection</td>
            <td class="align-top"><code>boolean</code></td>
            <td class="align-top">{{% md %}}
(Optional) If true, deletion of the load balancer will be disabled via
the AWS API. This will prevent this provider from deleting the load balancer. Defaults to `false`.

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">enable<wbr>Http2</td>
            <td class="align-top"><code>boolean</code></td>
            <td class="align-top">{{% md %}}
(Optional) Indicates whether HTTP/2 is enabled in `application` load balancers. Defaults to `true`.

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">idle<wbr>Timeout</td>
            <td class="align-top"><code>number</code></td>
            <td class="align-top">{{% md %}}
(Optional) The time in seconds that the connection is allowed to be idle. Only valid for Load Balancers of type `application`. Default: 60.

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">internal</td>
            <td class="align-top"><code>boolean</code></td>
            <td class="align-top">{{% md %}}
(Optional) If true, the LB will be internal.

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">ip<wbr>Address<wbr>Type</td>
            <td class="align-top"><code>IpAddressType</code></td>
            <td class="align-top">{{% md %}}
(Optional) The type of IP addresses used by the subnets for your load balancer. The possible values are `ipv4` and `dualstack`

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">load<wbr>Balancer<wbr>Type</td>
            <td class="align-top"><code>LoadBalancerType</code></td>
            <td class="align-top">{{% md %}}
(Optional) The type of load balancer to create. Possible values are `application` or `network`. The default value is `application`.

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">name</td>
            <td class="align-top"><code>string</code></td>
            <td class="align-top">{{% md %}}
(Optional) The name of the LB. This name must be unique within your AWS account, can have a maximum of 32 characters,
must contain only alphanumeric characters or hyphens, and must not begin or end with a hyphen. If not specified,
this provider will autogenerate a name beginning with `tf-lb`.

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">name<wbr>Prefix</td>
            <td class="align-top"><code>string</code></td>
            <td class="align-top">{{% md %}}
(Optional) Creates a unique name beginning with the specified prefix. Conflicts with `name`.

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">security<wbr>Groups</td>
            <td class="align-top"><code>Array&lt;<wbr>string<wbr>&gt;</code></td>
            <td class="align-top">{{% md %}}
(Optional) A list of security group IDs to assign to the LB. Only valid for Load Balancers of type `application`.

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">subnet<wbr>Mappings</td>
            <td class="align-top"><code>Array&lt;<wbr><a href="#loadbalancersubnetmapping">Load<wbr>Balancer<wbr>Subnet<wbr>Mapping</a><wbr>&gt;</code></td>
            <td class="align-top">{{% md %}}
(Optional) A subnet mapping block as documented below.

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">subnets</td>
            <td class="align-top"><code>Array&lt;<wbr>string<wbr>&gt;</code></td>
            <td class="align-top">{{% md %}}
(Optional) A list of subnet IDs to attach to the LB. Subnets
cannot be updated for Load Balancers of type `network`. Changing this value
for load balancers of type `network` will force a recreation of the resource.

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">tags</td>
            <td class="align-top"><code>Map&lt;<wbr>any<wbr>&gt;</code></td>
            <td class="align-top">{{% md %}}
(Optional) A mapping of tags to assign to the resource.

{{% /md %}}</td>
        </tr>
    </tbody>
</table>

## LoadBalancer Output Properties

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
            <td class="align-top">access<wbr>Logs</td>
            <td class="align-top"><code><a href="#loadbalanceraccesslogs">Load<wbr>Balancer<wbr>Access<wbr>Logs</a></code></td>
            <td class="align-top">{{% md %}}
An Access Logs block. Access Logs documented below.

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">arn</td>
            <td class="align-top"><code>string</code></td>
            <td class="align-top">{{% md %}}
The ARN of the load balancer (matches `id`).

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">arn<wbr>Suffix</td>
            <td class="align-top"><code>string</code></td>
            <td class="align-top">{{% md %}}
The ARN suffix for use with CloudWatch Metrics.

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">dns<wbr>Name</td>
            <td class="align-top"><code>string</code></td>
            <td class="align-top">{{% md %}}
The DNS name of the load balancer.

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">enable<wbr>Cross<wbr>Zone<wbr>Load<wbr>Balancing</td>
            <td class="align-top"><code>boolean</code></td>
            <td class="align-top">{{% md %}}
If true, cross-zone load balancing of the load balancer will be enabled.
This is a `network` load balancer feature. Defaults to `false`.

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">enable<wbr>Deletion<wbr>Protection</td>
            <td class="align-top"><code>boolean</code></td>
            <td class="align-top">{{% md %}}
If true, deletion of the load balancer will be disabled via
the AWS API. This will prevent this provider from deleting the load balancer. Defaults to `false`.

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">enable<wbr>Http2</td>
            <td class="align-top"><code>boolean</code></td>
            <td class="align-top">{{% md %}}
Indicates whether HTTP/2 is enabled in `application` load balancers. Defaults to `true`.

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">idle<wbr>Timeout</td>
            <td class="align-top"><code>number</code></td>
            <td class="align-top">{{% md %}}
The time in seconds that the connection is allowed to be idle. Only valid for Load Balancers of type `application`. Default: 60.

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">internal</td>
            <td class="align-top"><code>boolean</code></td>
            <td class="align-top">{{% md %}}
If true, the LB will be internal.

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">ip<wbr>Address<wbr>Type</td>
            <td class="align-top"><code>IpAddressType</code></td>
            <td class="align-top">{{% md %}}
The type of IP addresses used by the subnets for your load balancer. The possible values are `ipv4` and `dualstack`

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">load<wbr>Balancer<wbr>Type</td>
            <td class="align-top"><code>LoadBalancerType</code></td>
            <td class="align-top">{{% md %}}
The type of load balancer to create. Possible values are `application` or `network`. The default value is `application`.

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">name</td>
            <td class="align-top"><code>string</code></td>
            <td class="align-top">{{% md %}}
The name of the LB. This name must be unique within your AWS account, can have a maximum of 32 characters,
must contain only alphanumeric characters or hyphens, and must not begin or end with a hyphen. If not specified,
this provider will autogenerate a name beginning with `tf-lb`.

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">name<wbr>Prefix</td>
            <td class="align-top"><code>string</code></td>
            <td class="align-top">{{% md %}}
Creates a unique name beginning with the specified prefix. Conflicts with `name`.

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">security<wbr>Groups</td>
            <td class="align-top"><code>Array&lt;<wbr>string<wbr>&gt;</code></td>
            <td class="align-top">{{% md %}}
A list of security group IDs to assign to the LB. Only valid for Load Balancers of type `application`.

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">subnet<wbr>Mappings</td>
            <td class="align-top"><code>Array&lt;<wbr><a href="#loadbalancersubnetmapping">Load<wbr>Balancer<wbr>Subnet<wbr>Mapping</a><wbr>&gt;</code></td>
            <td class="align-top">{{% md %}}
A subnet mapping block as documented below.

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">subnets</td>
            <td class="align-top"><code>Array&lt;<wbr>string<wbr>&gt;</code></td>
            <td class="align-top">{{% md %}}
A list of subnet IDs to attach to the LB. Subnets
cannot be updated for Load Balancers of type `network`. Changing this value
for load balancers of type `network` will force a recreation of the resource.

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">tags</td>
            <td class="align-top"><code>Map&lt;<wbr>any<wbr>&gt;</code></td>
            <td class="align-top">{{% md %}}
A mapping of tags to assign to the resource.

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">vpc<wbr>Id</td>
            <td class="align-top"><code>string</code></td>
            <td class="align-top">{{% md %}}

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">zone<wbr>Id</td>
            <td class="align-top"><code>string</code></td>
            <td class="align-top">{{% md %}}
The canonical hosted zone ID of the load balancer (to be used in a Route 53 Alias record).

{{% /md %}}</td>
        </tr>
    </tbody>
</table>

## Look up an Existing LoadBalancer Resource

{{< langchoose csharp >}}

```typescript
public static get(name: string, id: pulumi.Input<pulumi.ID>, state?: LoadBalancerState, opts?: pulumi.CustomResourceOptions): LoadBalancer;
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

Get an existing LoadBalancer resource's state with the given name, ID, and optional extra
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
            <td class="align-top">access<wbr>Logs</td>
            <td class="align-top"><code><a href="#loadbalanceraccesslogs">Load<wbr>Balancer<wbr>Access<wbr>Logs</a></code></td>
            <td class="align-top">{{% md %}}
(Optional) An Access Logs block. Access Logs documented below.

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">arn</td>
            <td class="align-top"><code>string</code></td>
            <td class="align-top">{{% md %}}
(Optional) The ARN of the load balancer (matches `id`).

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">arn<wbr>Suffix</td>
            <td class="align-top"><code>string</code></td>
            <td class="align-top">{{% md %}}
(Optional) The ARN suffix for use with CloudWatch Metrics.

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">dns<wbr>Name</td>
            <td class="align-top"><code>string</code></td>
            <td class="align-top">{{% md %}}
(Optional) The DNS name of the load balancer.

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">enable<wbr>Cross<wbr>Zone<wbr>Load<wbr>Balancing</td>
            <td class="align-top"><code>boolean</code></td>
            <td class="align-top">{{% md %}}
(Optional) If true, cross-zone load balancing of the load balancer will be enabled.
This is a `network` load balancer feature. Defaults to `false`.

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">enable<wbr>Deletion<wbr>Protection</td>
            <td class="align-top"><code>boolean</code></td>
            <td class="align-top">{{% md %}}
(Optional) If true, deletion of the load balancer will be disabled via
the AWS API. This will prevent this provider from deleting the load balancer. Defaults to `false`.

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">enable<wbr>Http2</td>
            <td class="align-top"><code>boolean</code></td>
            <td class="align-top">{{% md %}}
(Optional) Indicates whether HTTP/2 is enabled in `application` load balancers. Defaults to `true`.

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">idle<wbr>Timeout</td>
            <td class="align-top"><code>number</code></td>
            <td class="align-top">{{% md %}}
(Optional) The time in seconds that the connection is allowed to be idle. Only valid for Load Balancers of type `application`. Default: 60.

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">internal</td>
            <td class="align-top"><code>boolean</code></td>
            <td class="align-top">{{% md %}}
(Optional) If true, the LB will be internal.

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">ip<wbr>Address<wbr>Type</td>
            <td class="align-top"><code>IpAddressType</code></td>
            <td class="align-top">{{% md %}}
(Optional) The type of IP addresses used by the subnets for your load balancer. The possible values are `ipv4` and `dualstack`

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">load<wbr>Balancer<wbr>Type</td>
            <td class="align-top"><code>LoadBalancerType</code></td>
            <td class="align-top">{{% md %}}
(Optional) The type of load balancer to create. Possible values are `application` or `network`. The default value is `application`.

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">name</td>
            <td class="align-top"><code>string</code></td>
            <td class="align-top">{{% md %}}
(Optional) The name of the LB. This name must be unique within your AWS account, can have a maximum of 32 characters,
must contain only alphanumeric characters or hyphens, and must not begin or end with a hyphen. If not specified,
this provider will autogenerate a name beginning with `tf-lb`.

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">name<wbr>Prefix</td>
            <td class="align-top"><code>string</code></td>
            <td class="align-top">{{% md %}}
(Optional) Creates a unique name beginning with the specified prefix. Conflicts with `name`.

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">security<wbr>Groups</td>
            <td class="align-top"><code>Array&lt;<wbr>string<wbr>&gt;</code></td>
            <td class="align-top">{{% md %}}
(Optional) A list of security group IDs to assign to the LB. Only valid for Load Balancers of type `application`.

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">subnet<wbr>Mappings</td>
            <td class="align-top"><code>Array&lt;<wbr><a href="#loadbalancersubnetmapping">Load<wbr>Balancer<wbr>Subnet<wbr>Mapping</a><wbr>&gt;</code></td>
            <td class="align-top">{{% md %}}
(Optional) A subnet mapping block as documented below.

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">subnets</td>
            <td class="align-top"><code>Array&lt;<wbr>string<wbr>&gt;</code></td>
            <td class="align-top">{{% md %}}
(Optional) A list of subnet IDs to attach to the LB. Subnets
cannot be updated for Load Balancers of type `network`. Changing this value
for load balancers of type `network` will force a recreation of the resource.

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">tags</td>
            <td class="align-top"><code>Map&lt;<wbr>any<wbr>&gt;</code></td>
            <td class="align-top">{{% md %}}
(Optional) A mapping of tags to assign to the resource.

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">vpc<wbr>Id</td>
            <td class="align-top"><code>string</code></td>
            <td class="align-top">{{% md %}}
(Optional) 
{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">zone<wbr>Id</td>
            <td class="align-top"><code>string</code></td>
            <td class="align-top">{{% md %}}
(Optional) The canonical hosted zone ID of the load balancer (to be used in a Route 53 Alias record).

{{% /md %}}</td>
        </tr>
    </tbody>
</table>

## Import an Existing LoadBalancer Resource

TODO

## Support Types

#### LoadBalancerAccessLogs

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
            <td class="align-top">bucket</td>
            <td class="align-top"><code>string</code></td>
            <td class="align-top">{{% md %}}
(Required) The S3 bucket name to store the logs in.

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">enabled</td>
            <td class="align-top"><code>boolean</code></td>
            <td class="align-top">{{% md %}}
(Optional) Boolean to enable / disable `access_logs`. Defaults to `false`, even when `bucket` is specified.

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">prefix</td>
            <td class="align-top"><code>string</code></td>
            <td class="align-top">{{% md %}}
(Optional) The S3 bucket prefix. Logs are stored in the root if not configured.

{{% /md %}}</td>
        </tr>
    </tbody>
</table>

#### LoadBalancerSubnetMapping

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
            <td class="align-top">allocation<wbr>Id</td>
            <td class="align-top"><code>string</code></td>
            <td class="align-top">{{% md %}}
(Optional) The allocation ID of the Elastic IP address.

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">subnet<wbr>Id</td>
            <td class="align-top"><code>string</code></td>
            <td class="align-top">{{% md %}}
(Required) The id of the subnet of which to attach to the load balancer. You can specify only one subnet per Availability Zone.

{{% /md %}}</td>
        </tr>
    </tbody>
</table>
