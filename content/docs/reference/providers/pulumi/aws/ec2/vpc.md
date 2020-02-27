---
title: "Vpc"
---

<!-- WARNING: this file was generated by the Pulumi Terraform Bridge (tfgen) Tool. -->
<!-- Do not edit by hand unless you're certain you know what you are doing! -->

<style>
  table td p { margin-top: 0; margin-bottom: 0; }
</style>

Provides a VPC resource.

> This content is derived from https://github.com/terraform-providers/terraform-provider-aws/blob/master/website/docs/r/vpc.html.markdown.


## Create a Vpc Resource

{{< langchoose csharp >}}

<div class="highlight"><pre class="chroma"><code class="language-typescript" data-lang="typescript"><span class="k">new</span> <span class="nx"><a href=/docs/reference/pkg/nodejs/pulumi/aws/s3/#Vpc>Vpc</a></span><span class="p">(</span><span class="nx">name</span>: <span class="kt"><a href=https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/String>string</a></span><span class="p">,</span> <span class="nx">args</span>: <span class="kt"><a href=/docs/reference/pkg/nodejs/pulumi/aws/s3/#VpcArgs>VpcArgs</a></span><span class="p">,</span> <span class="nx">opts?</span>: <span class="kt"><a href=/docs/reference/pkg/nodejs/pulumi/pulumi/#CustomResourceOptions>pulumi.CustomResourceOptions</a></span><span class="p">);</span></code></pre></div>

```python
def __init__(__self__, resource_name, opts=None, assign_generated_ipv6_cidr_block=None, cidr_block=None, enable_classiclink=None, enable_classiclink_dns_support=None, enable_dns_hostnames=None, enable_dns_support=None, instance_tenancy=None, tags=None, __props__=None)
```

```go
func NewVpc(ctx *pulumi.Context, name string, args *VpcArgs, opts ...pulumi.ResourceOption) (*Vpc, error)

```

```csharp
public Vpc(string name, VpcArgs args, CustomResourceOptions? options = null)

```

Creates a Vpc resource with the given unique name, arguments, and options.

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
            <td class="align-top">assign<wbr>Generated<wbr>Ipv6Cidr<wbr>Block</td>
            <td class="align-top"><code>boolean</code></td>
            <td class="align-top">{{% md %}}
(Optional) Requests an Amazon-provided IPv6 CIDR
block with a /56 prefix length for the VPC. You cannot specify the range of IP addresses, or
the size of the CIDR block. Default is `false`.

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">cidr<wbr>Block</td>
            <td class="align-top"><code>string</code></td>
            <td class="align-top">{{% md %}}
(Required) The CIDR block for the VPC.

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">enable<wbr>Classiclink</td>
            <td class="align-top"><code>boolean</code></td>
            <td class="align-top">{{% md %}}
(Optional) A boolean flag to enable/disable ClassicLink
for the VPC. Only valid in regions and accounts that support EC2 Classic.
See the [ClassicLink documentation][1] for more information. Defaults false.

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">enable<wbr>Classiclink<wbr>Dns<wbr>Support</td>
            <td class="align-top"><code>boolean</code></td>
            <td class="align-top">{{% md %}}
(Optional) A boolean flag to enable/disable ClassicLink DNS Support for the VPC.
Only valid in regions and accounts that support EC2 Classic.

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">enable<wbr>Dns<wbr>Hostnames</td>
            <td class="align-top"><code>boolean</code></td>
            <td class="align-top">{{% md %}}
(Optional) A boolean flag to enable/disable DNS hostnames in the VPC. Defaults false.

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">enable<wbr>Dns<wbr>Support</td>
            <td class="align-top"><code>boolean</code></td>
            <td class="align-top">{{% md %}}
(Optional) A boolean flag to enable/disable DNS support in the VPC. Defaults true.

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">instance<wbr>Tenancy</td>
            <td class="align-top"><code>string</code></td>
            <td class="align-top">{{% md %}}
(Optional) A tenancy option for instances launched into the VPC

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

## Vpc Output Properties

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
            <td class="align-top">arn</td>
            <td class="align-top"><code>string</code></td>
            <td class="align-top">{{% md %}}
Amazon Resource Name (ARN) of VPC

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">assign<wbr>Generated<wbr>Ipv6Cidr<wbr>Block</td>
            <td class="align-top"><code>boolean</code></td>
            <td class="align-top">{{% md %}}
Requests an Amazon-provided IPv6 CIDR
block with a /56 prefix length for the VPC. You cannot specify the range of IP addresses, or
the size of the CIDR block. Default is `false`.

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">cidr<wbr>Block</td>
            <td class="align-top"><code>string</code></td>
            <td class="align-top">{{% md %}}
The CIDR block for the VPC.

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">default<wbr>Network<wbr>Acl<wbr>Id</td>
            <td class="align-top"><code>string</code></td>
            <td class="align-top">{{% md %}}
The ID of the network ACL created by default on VPC creation

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">default<wbr>Route<wbr>Table<wbr>Id</td>
            <td class="align-top"><code>string</code></td>
            <td class="align-top">{{% md %}}
The ID of the route table created by default on VPC creation

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">default<wbr>Security<wbr>Group<wbr>Id</td>
            <td class="align-top"><code>string</code></td>
            <td class="align-top">{{% md %}}
The ID of the security group created by default on VPC creation

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">dhcp<wbr>Options<wbr>Id</td>
            <td class="align-top"><code>string</code></td>
            <td class="align-top">{{% md %}}

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">enable<wbr>Classiclink</td>
            <td class="align-top"><code>boolean</code></td>
            <td class="align-top">{{% md %}}
A boolean flag to enable/disable ClassicLink
for the VPC. Only valid in regions and accounts that support EC2 Classic.
See the [ClassicLink documentation][1] for more information. Defaults false.

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">enable<wbr>Classiclink<wbr>Dns<wbr>Support</td>
            <td class="align-top"><code>boolean</code></td>
            <td class="align-top">{{% md %}}
A boolean flag to enable/disable ClassicLink DNS Support for the VPC.
Only valid in regions and accounts that support EC2 Classic.

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">enable<wbr>Dns<wbr>Hostnames</td>
            <td class="align-top"><code>boolean</code></td>
            <td class="align-top">{{% md %}}
A boolean flag to enable/disable DNS hostnames in the VPC. Defaults false.

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">enable<wbr>Dns<wbr>Support</td>
            <td class="align-top"><code>boolean</code></td>
            <td class="align-top">{{% md %}}
A boolean flag to enable/disable DNS support in the VPC. Defaults true.

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">instance<wbr>Tenancy</td>
            <td class="align-top"><code>string</code></td>
            <td class="align-top">{{% md %}}
A tenancy option for instances launched into the VPC

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">ipv6Association<wbr>Id</td>
            <td class="align-top"><code>string</code></td>
            <td class="align-top">{{% md %}}
The association ID for the IPv6 CIDR block.

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">ipv6Cidr<wbr>Block</td>
            <td class="align-top"><code>string</code></td>
            <td class="align-top">{{% md %}}
The IPv6 CIDR block.

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">main<wbr>Route<wbr>Table<wbr>Id</td>
            <td class="align-top"><code>string</code></td>
            <td class="align-top">{{% md %}}
The ID of the main route table associated with
this VPC. Note that you can change a VPC's main route table by using an
[`aws.ec2.MainRouteTableAssociation`](https://www.terraform.io/docs/providers/aws/r/main_route_table_association.html).

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">owner<wbr>Id</td>
            <td class="align-top"><code>string</code></td>
            <td class="align-top">{{% md %}}
The ID of the AWS account that owns the VPC.

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">tags</td>
            <td class="align-top"><code>Map&lt;<wbr>any<wbr>&gt;</code></td>
            <td class="align-top">{{% md %}}
A mapping of tags to assign to the resource.

{{% /md %}}</td>
        </tr>
    </tbody>
</table>

## Look up an Existing Vpc Resource

{{< langchoose csharp >}}

```typescript
public static get(name: string, id: pulumi.Input<pulumi.ID>, state?: VpcState, opts?: pulumi.CustomResourceOptions): Vpc;
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

Get an existing Vpc resource's state with the given name, ID, and optional extra
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
            <td class="align-top">arn</td>
            <td class="align-top"><code>string</code></td>
            <td class="align-top">{{% md %}}
(Optional) Amazon Resource Name (ARN) of VPC

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">assign<wbr>Generated<wbr>Ipv6Cidr<wbr>Block</td>
            <td class="align-top"><code>boolean</code></td>
            <td class="align-top">{{% md %}}
(Optional) Requests an Amazon-provided IPv6 CIDR
block with a /56 prefix length for the VPC. You cannot specify the range of IP addresses, or
the size of the CIDR block. Default is `false`.

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">cidr<wbr>Block</td>
            <td class="align-top"><code>string</code></td>
            <td class="align-top">{{% md %}}
(Optional) The CIDR block for the VPC.

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">default<wbr>Network<wbr>Acl<wbr>Id</td>
            <td class="align-top"><code>string</code></td>
            <td class="align-top">{{% md %}}
(Optional) The ID of the network ACL created by default on VPC creation

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">default<wbr>Route<wbr>Table<wbr>Id</td>
            <td class="align-top"><code>string</code></td>
            <td class="align-top">{{% md %}}
(Optional) The ID of the route table created by default on VPC creation

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">default<wbr>Security<wbr>Group<wbr>Id</td>
            <td class="align-top"><code>string</code></td>
            <td class="align-top">{{% md %}}
(Optional) The ID of the security group created by default on VPC creation

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">dhcp<wbr>Options<wbr>Id</td>
            <td class="align-top"><code>string</code></td>
            <td class="align-top">{{% md %}}
(Optional) 
{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">enable<wbr>Classiclink</td>
            <td class="align-top"><code>boolean</code></td>
            <td class="align-top">{{% md %}}
(Optional) A boolean flag to enable/disable ClassicLink
for the VPC. Only valid in regions and accounts that support EC2 Classic.
See the [ClassicLink documentation][1] for more information. Defaults false.

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">enable<wbr>Classiclink<wbr>Dns<wbr>Support</td>
            <td class="align-top"><code>boolean</code></td>
            <td class="align-top">{{% md %}}
(Optional) A boolean flag to enable/disable ClassicLink DNS Support for the VPC.
Only valid in regions and accounts that support EC2 Classic.

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">enable<wbr>Dns<wbr>Hostnames</td>
            <td class="align-top"><code>boolean</code></td>
            <td class="align-top">{{% md %}}
(Optional) A boolean flag to enable/disable DNS hostnames in the VPC. Defaults false.

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">enable<wbr>Dns<wbr>Support</td>
            <td class="align-top"><code>boolean</code></td>
            <td class="align-top">{{% md %}}
(Optional) A boolean flag to enable/disable DNS support in the VPC. Defaults true.

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">instance<wbr>Tenancy</td>
            <td class="align-top"><code>string</code></td>
            <td class="align-top">{{% md %}}
(Optional) A tenancy option for instances launched into the VPC

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">ipv6Association<wbr>Id</td>
            <td class="align-top"><code>string</code></td>
            <td class="align-top">{{% md %}}
(Optional) The association ID for the IPv6 CIDR block.

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">ipv6Cidr<wbr>Block</td>
            <td class="align-top"><code>string</code></td>
            <td class="align-top">{{% md %}}
(Optional) The IPv6 CIDR block.

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">main<wbr>Route<wbr>Table<wbr>Id</td>
            <td class="align-top"><code>string</code></td>
            <td class="align-top">{{% md %}}
(Optional) The ID of the main route table associated with
this VPC. Note that you can change a VPC's main route table by using an
[`aws.ec2.MainRouteTableAssociation`](https://www.terraform.io/docs/providers/aws/r/main_route_table_association.html).

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">owner<wbr>Id</td>
            <td class="align-top"><code>string</code></td>
            <td class="align-top">{{% md %}}
(Optional) The ID of the AWS account that owns the VPC.

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

## Import an Existing Vpc Resource

TODO

## Support Types
