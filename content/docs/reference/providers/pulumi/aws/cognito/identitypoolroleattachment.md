---
title: "IdentityPoolRoleAttachment"
---

<!-- WARNING: this file was generated by the Pulumi Terraform Bridge (tfgen) Tool. -->
<!-- Do not edit by hand unless you're certain you know what you are doing! -->

<style>
  table td p { margin-top: 0; margin-bottom: 0; }
</style>

Provides an AWS Cognito Identity Pool Roles Attachment.

> This content is derived from https://github.com/terraform-providers/terraform-provider-aws/blob/master/website/docs/r/cognito_identity_pool_roles_attachment.markdown.


## Create a IdentityPoolRoleAttachment Resource

{{< langchoose csharp >}}

<div class="highlight"><pre class="chroma"><code class="language-typescript" data-lang="typescript"><span class="k">new</span> <span class="nx"><a href=/docs/reference/pkg/nodejs/pulumi/aws/s3/#IdentityPoolRoleAttachment>IdentityPoolRoleAttachment</a></span><span class="p">(</span><span class="nx">name</span>: <span class="kt"><a href=https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/String>string</a></span><span class="p">,</span> <span class="nx">args</span>: <span class="kt"><a href=/docs/reference/pkg/nodejs/pulumi/aws/s3/#IdentityPoolRoleAttachmentArgs>IdentityPoolRoleAttachmentArgs</a></span><span class="p">,</span> <span class="nx">opts?</span>: <span class="kt"><a href=/docs/reference/pkg/nodejs/pulumi/pulumi/#CustomResourceOptions>pulumi.CustomResourceOptions</a></span><span class="p">);</span></code></pre></div>

```python
def __init__(__self__, resource_name, opts=None, identity_pool_id=None, role_mappings=None, roles=None, __props__=None)
```

```go
func NewIdentityPoolRoleAttachment(ctx *pulumi.Context, name string, args *IdentityPoolRoleAttachmentArgs, opts ...pulumi.ResourceOption) (*IdentityPoolRoleAttachment, error)

```

```csharp
public IdentityPoolRoleAttachment(string name, IdentityPoolRoleAttachmentArgs args, CustomResourceOptions? options = null)

```

Creates a IdentityPoolRoleAttachment resource with the given unique name, arguments, and options.

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
            <td class="align-top">identity<wbr>Pool<wbr>Id</td>
            <td class="align-top"><code>string</code></td>
            <td class="align-top">{{% md %}}
(Required) An identity pool ID in the format REGION:GUID.

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">role<wbr>Mappings</td>
            <td class="align-top"><code>Array&lt;<wbr><a href="#identitypoolroleattachmentrolemapping">Identity<wbr>Pool<wbr>Role<wbr>Attachment<wbr>Role<wbr>Mapping</a><wbr>&gt;</code></td>
            <td class="align-top">{{% md %}}
(Optional) A List of Role Mapping.

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">roles</td>
            <td class="align-top"><code><a href="#identitypoolroleattachmentroles">Identity<wbr>Pool<wbr>Role<wbr>Attachment<wbr>Roles</a></code></td>
            <td class="align-top">{{% md %}}
(Required) The map of roles associated with this pool. For a given role, the key will be either "authenticated" or "unauthenticated" and the value will be the Role ARN.

{{% /md %}}</td>
        </tr>
    </tbody>
</table>

## IdentityPoolRoleAttachment Output Properties

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
            <td class="align-top">identity<wbr>Pool<wbr>Id</td>
            <td class="align-top"><code>string</code></td>
            <td class="align-top">{{% md %}}
An identity pool ID in the format REGION:GUID.

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">role<wbr>Mappings</td>
            <td class="align-top"><code>Array&lt;<wbr><a href="#identitypoolroleattachmentrolemapping">Identity<wbr>Pool<wbr>Role<wbr>Attachment<wbr>Role<wbr>Mapping</a><wbr>&gt;</code></td>
            <td class="align-top">{{% md %}}
A List of Role Mapping.

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">roles</td>
            <td class="align-top"><code><a href="#identitypoolroleattachmentroles">Identity<wbr>Pool<wbr>Role<wbr>Attachment<wbr>Roles</a></code></td>
            <td class="align-top">{{% md %}}
The map of roles associated with this pool. For a given role, the key will be either "authenticated" or "unauthenticated" and the value will be the Role ARN.

{{% /md %}}</td>
        </tr>
    </tbody>
</table>

## Look up an Existing IdentityPoolRoleAttachment Resource

{{< langchoose csharp >}}

```typescript
public static get(name: string, id: pulumi.Input<pulumi.ID>, state?: IdentityPoolRoleAttachmentState, opts?: pulumi.CustomResourceOptions): IdentityPoolRoleAttachment;
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

Get an existing IdentityPoolRoleAttachment resource's state with the given name, ID, and optional extra
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
            <td class="align-top">identity<wbr>Pool<wbr>Id</td>
            <td class="align-top"><code>string</code></td>
            <td class="align-top">{{% md %}}
(Optional) An identity pool ID in the format REGION:GUID.

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">role<wbr>Mappings</td>
            <td class="align-top"><code>Array&lt;<wbr><a href="#identitypoolroleattachmentrolemapping">Identity<wbr>Pool<wbr>Role<wbr>Attachment<wbr>Role<wbr>Mapping</a><wbr>&gt;</code></td>
            <td class="align-top">{{% md %}}
(Optional) A List of Role Mapping.

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">roles</td>
            <td class="align-top"><code><a href="#identitypoolroleattachmentroles">Identity<wbr>Pool<wbr>Role<wbr>Attachment<wbr>Roles</a></code></td>
            <td class="align-top">{{% md %}}
(Optional) The map of roles associated with this pool. For a given role, the key will be either "authenticated" or "unauthenticated" and the value will be the Role ARN.

{{% /md %}}</td>
        </tr>
    </tbody>
</table>

## Import an Existing IdentityPoolRoleAttachment Resource

TODO

## Support Types

#### IdentityPoolRoleAttachmentRoleMapping

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
            <td class="align-top">ambiguous<wbr>Role<wbr>Resolution</td>
            <td class="align-top"><code>string</code></td>
            <td class="align-top">{{% md %}}
(Optional) Specifies the action to be taken if either no rules match the claim value for the Rules type, or there is no cognito:preferred_role claim and there are multiple cognito:roles matches for the Token type. `Required` if you specify Token or Rules as the Type.

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">identity<wbr>Provider</td>
            <td class="align-top"><code>string</code></td>
            <td class="align-top">{{% md %}}
(Required) A string identifying the identity provider, for example, "graph.facebook.com" or "cognito-idp.us-east-1.amazonaws.com/us-east-1_abcdefghi:app_client_id".

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">mapping<wbr>Rules</td>
            <td class="align-top"><code>Array&lt;<wbr><a href="#identitypoolroleattachmentrolemappingmappingrule">Identity<wbr>Pool<wbr>Role<wbr>Attachment<wbr>Role<wbr>Mapping<wbr>Mapping<wbr>Rule</a><wbr>&gt;</code></td>
            <td class="align-top">{{% md %}}
(Optional) The Rules Configuration to be used for mapping users to roles. You can specify up to 25 rules per identity provider. Rules are evaluated in order. The first one to match specifies the role.

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">type</td>
            <td class="align-top"><code>string</code></td>
            <td class="align-top">{{% md %}}
(Required) The role mapping type.

{{% /md %}}</td>
        </tr>
    </tbody>
</table>

#### IdentityPoolRoleAttachmentRoleMappingMappingRule

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
            <td class="align-top">claim</td>
            <td class="align-top"><code>string</code></td>
            <td class="align-top">{{% md %}}
(Required) The claim name that must be present in the token, for example, "isAdmin" or "paid".

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">match<wbr>Type</td>
            <td class="align-top"><code>string</code></td>
            <td class="align-top">{{% md %}}
(Required) The match condition that specifies how closely the claim value in the IdP token must match Value.

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">role<wbr>Arn</td>
            <td class="align-top"><code>string</code></td>
            <td class="align-top">{{% md %}}
(Required) The role ARN.

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">value</td>
            <td class="align-top"><code>string</code></td>
            <td class="align-top">{{% md %}}
(Required) A brief string that the claim must match, for example, "paid" or "yes".

{{% /md %}}</td>
        </tr>
    </tbody>
</table>

#### IdentityPoolRoleAttachmentRoles

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
            <td class="align-top">authenticated</td>
            <td class="align-top"><code>string</code></td>
            <td class="align-top">{{% md %}}
(Optional) 
{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">unauthenticated</td>
            <td class="align-top"><code>string</code></td>
            <td class="align-top">{{% md %}}
(Optional) 
{{% /md %}}</td>
        </tr>
    </tbody>
</table>
