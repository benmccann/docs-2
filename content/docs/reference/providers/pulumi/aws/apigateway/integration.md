---
title: "Integration"
---

<!-- WARNING: this file was generated by the Pulumi Terraform Bridge (tfgen) Tool. -->
<!-- Do not edit by hand unless you're certain you know what you are doing! -->

<style>
  table td p { margin-top: 0; margin-bottom: 0; }
</style>

Provides an HTTP Method Integration for an API Gateway Integration.

> This content is derived from https://github.com/terraform-providers/terraform-provider-aws/blob/master/website/docs/r/api_gateway_integration.html.markdown.


## Create a Integration Resource

{{< langchoose csharp >}}

<div class="highlight"><pre class="chroma"><code class="language-typescript" data-lang="typescript"><span class="k">new</span> <span class="nx"><a href=/docs/reference/pkg/nodejs/pulumi/aws/s3/#Integration>Integration</a></span><span class="p">(</span><span class="nx">name</span>: <span class="kt"><a href=https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/String>string</a></span><span class="p">,</span> <span class="nx">args</span>: <span class="kt"><a href=/docs/reference/pkg/nodejs/pulumi/aws/s3/#IntegrationArgs>IntegrationArgs</a></span><span class="p">,</span> <span class="nx">opts?</span>: <span class="kt"><a href=/docs/reference/pkg/nodejs/pulumi/pulumi/#CustomResourceOptions>pulumi.CustomResourceOptions</a></span><span class="p">);</span></code></pre></div>

```python
def __init__(__self__, resource_name, opts=None, cache_key_parameters=None, cache_namespace=None, connection_id=None, connection_type=None, content_handling=None, credentials=None, http_method=None, integration_http_method=None, passthrough_behavior=None, request_parameters=None, request_templates=None, resource_id=None, rest_api=None, timeout_milliseconds=None, type=None, uri=None, __props__=None)
```

```go
func NewIntegration(ctx *pulumi.Context, name string, args *IntegrationArgs, opts ...pulumi.ResourceOption) (*Integration, error)

```

```csharp
public Integration(string name, IntegrationArgs args, CustomResourceOptions? options = null)

```

Creates a Integration resource with the given unique name, arguments, and options.

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
            <td class="align-top">cache<wbr>Key<wbr>Parameters</td>
            <td class="align-top"><code>Array&lt;<wbr>string<wbr>&gt;</code></td>
            <td class="align-top">{{% md %}}
(Optional) A list of cache key parameters for the integration.

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">cache<wbr>Namespace</td>
            <td class="align-top"><code>string</code></td>
            <td class="align-top">{{% md %}}
(Optional) The integration's cache namespace.

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">connection<wbr>Id</td>
            <td class="align-top"><code>string</code></td>
            <td class="align-top">{{% md %}}
(Optional) The id of the VpcLink used for the integration. **Required** if `connection_type` is `VPC_LINK`

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">connection<wbr>Type</td>
            <td class="align-top"><code>string</code></td>
            <td class="align-top">{{% md %}}
(Optional) The integration input's [connectionType](https://docs.aws.amazon.com/apigateway/api-reference/resource/integration/#connectionType). Valid values are `INTERNET` (default for connections through the public routable internet), and `VPC_LINK` (for private connections between API Gateway and a network load balancer in a VPC).

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">content<wbr>Handling</td>
            <td class="align-top"><code>string</code></td>
            <td class="align-top">{{% md %}}
(Optional) Specifies how to handle request payload content type conversions. Supported values are `CONVERT_TO_BINARY` and `CONVERT_TO_TEXT`. If this property is not defined, the request payload will be passed through from the method request to integration request without modification, provided that the passthroughBehaviors is configured to support payload pass-through.

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">credentials</td>
            <td class="align-top"><code>string</code></td>
            <td class="align-top">{{% md %}}
(Optional) The credentials required for the integration. For `AWS` integrations, 2 options are available. To specify an IAM Role for Amazon API Gateway to assume, use the role's ARN. To require that the caller's identity be passed through from the request, specify the string `arn:aws:iam::\*:user/\*`.

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">http<wbr>Method</td>
            <td class="align-top"><code>string</code></td>
            <td class="align-top">{{% md %}}
(Required) The HTTP method (`GET`, `POST`, `PUT`, `DELETE`, `HEAD`, `OPTION`, `ANY`)
when calling the associated resource.

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">integration<wbr>Http<wbr>Method</td>
            <td class="align-top"><code>string</code></td>
            <td class="align-top">{{% md %}}
(Optional) The integration HTTP method
(`GET`, `POST`, `PUT`, `DELETE`, `HEAD`, `OPTIONs`, `ANY`, `PATCH`) specifying how API Gateway will interact with the back end.
**Required** if `type` is `AWS`, `AWS_PROXY`, `HTTP` or `HTTP_PROXY`.
Not all methods are compatible with all `AWS` integrations.
e.g. Lambda function [can only be invoked](https://github.com/awslabs/aws-apigateway-importer/issues/9#issuecomment-129651005) via `POST`.

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">passthrough<wbr>Behavior</td>
            <td class="align-top"><code>string</code></td>
            <td class="align-top">{{% md %}}
(Optional) The integration passthrough behavior (`WHEN_NO_MATCH`, `WHEN_NO_TEMPLATES`, `NEVER`).  **Required** if `request_templates` is used.

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">request<wbr>Parameters</td>
            <td class="align-top"><code>Map&lt;<wbr>string<wbr>&gt;</code></td>
            <td class="align-top">{{% md %}}
(Optional) A map of request query string parameters and headers that should be passed to the backend responder.
For example: `request_parameters = { "integration.request.header.X-Some-Other-Header" = "method.request.header.X-Some-Header" }`

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">request<wbr>Templates</td>
            <td class="align-top"><code>Map&lt;<wbr>string<wbr>&gt;</code></td>
            <td class="align-top">{{% md %}}
(Optional) A map of the integration's request templates.

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">resource<wbr>Id</td>
            <td class="align-top"><code>string</code></td>
            <td class="align-top">{{% md %}}
(Required) The API resource ID.

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">rest<wbr>Api</td>
            <td class="align-top"><code>RestApi</code></td>
            <td class="align-top">{{% md %}}
(Required) The ID of the associated REST API.

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">timeout<wbr>Milliseconds</td>
            <td class="align-top"><code>number</code></td>
            <td class="align-top">{{% md %}}
(Optional) Custom timeout between 50 and 29,000 milliseconds. The default value is 29,000 milliseconds.

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">type</td>
            <td class="align-top"><code>string</code></td>
            <td class="align-top">{{% md %}}
(Required) The integration input's [type](https://docs.aws.amazon.com/apigateway/api-reference/resource/integration/). Valid values are `HTTP` (for HTTP backends), `MOCK` (not calling any real backend), `AWS` (for AWS services), `AWS_PROXY` (for Lambda proxy integration) and `HTTP_PROXY` (for HTTP proxy integration). An `HTTP` or `HTTP_PROXY` integration with a `connection_type` of `VPC_LINK` is referred to as a private integration and uses a VpcLink to connect API Gateway to a network load balancer of a VPC.

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">uri</td>
            <td class="align-top"><code>string</code></td>
            <td class="align-top">{{% md %}}
(Optional) The input's URI. **Required** if `type` is `AWS`, `AWS_PROXY`, `HTTP` or `HTTP_PROXY`.
For HTTP integrations, the URI must be a fully formed, encoded HTTP(S) URL according to the RFC-3986 specification . For AWS integrations, the URI should be of the form `arn:aws:apigateway:{region}:{subdomain.service|service}:{path|action}/{service_api}`. `region`, `subdomain` and `service` are used to determine the right endpoint.
e.g. `arn:aws:apigateway:eu-west-1:lambda:path/2015-03-31/functions/arn:aws:lambda:eu-west-1:012345678901:function:my-func/invocations`

{{% /md %}}</td>
        </tr>
    </tbody>
</table>

## Integration Output Properties

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
            <td class="align-top">cache<wbr>Key<wbr>Parameters</td>
            <td class="align-top"><code>Array&lt;<wbr>string<wbr>&gt;</code></td>
            <td class="align-top">{{% md %}}
A list of cache key parameters for the integration.

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">cache<wbr>Namespace</td>
            <td class="align-top"><code>string</code></td>
            <td class="align-top">{{% md %}}
The integration's cache namespace.

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">connection<wbr>Id</td>
            <td class="align-top"><code>string</code></td>
            <td class="align-top">{{% md %}}
The id of the VpcLink used for the integration. **Required** if `connection_type` is `VPC_LINK`

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">connection<wbr>Type</td>
            <td class="align-top"><code>string</code></td>
            <td class="align-top">{{% md %}}
The integration input's [connectionType](https://docs.aws.amazon.com/apigateway/api-reference/resource/integration/#connectionType). Valid values are `INTERNET` (default for connections through the public routable internet), and `VPC_LINK` (for private connections between API Gateway and a network load balancer in a VPC).

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">content<wbr>Handling</td>
            <td class="align-top"><code>string</code></td>
            <td class="align-top">{{% md %}}
Specifies how to handle request payload content type conversions. Supported values are `CONVERT_TO_BINARY` and `CONVERT_TO_TEXT`. If this property is not defined, the request payload will be passed through from the method request to integration request without modification, provided that the passthroughBehaviors is configured to support payload pass-through.

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">credentials</td>
            <td class="align-top"><code>string</code></td>
            <td class="align-top">{{% md %}}
The credentials required for the integration. For `AWS` integrations, 2 options are available. To specify an IAM Role for Amazon API Gateway to assume, use the role's ARN. To require that the caller's identity be passed through from the request, specify the string `arn:aws:iam::\*:user/\*`.

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">http<wbr>Method</td>
            <td class="align-top"><code>string</code></td>
            <td class="align-top">{{% md %}}
The HTTP method (`GET`, `POST`, `PUT`, `DELETE`, `HEAD`, `OPTION`, `ANY`)
when calling the associated resource.

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">integration<wbr>Http<wbr>Method</td>
            <td class="align-top"><code>string</code></td>
            <td class="align-top">{{% md %}}
The integration HTTP method
(`GET`, `POST`, `PUT`, `DELETE`, `HEAD`, `OPTIONs`, `ANY`, `PATCH`) specifying how API Gateway will interact with the back end.
**Required** if `type` is `AWS`, `AWS_PROXY`, `HTTP` or `HTTP_PROXY`.
Not all methods are compatible with all `AWS` integrations.
e.g. Lambda function [can only be invoked](https://github.com/awslabs/aws-apigateway-importer/issues/9#issuecomment-129651005) via `POST`.

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">passthrough<wbr>Behavior</td>
            <td class="align-top"><code>string</code></td>
            <td class="align-top">{{% md %}}
The integration passthrough behavior (`WHEN_NO_MATCH`, `WHEN_NO_TEMPLATES`, `NEVER`).  **Required** if `request_templates` is used.

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">request<wbr>Parameters</td>
            <td class="align-top"><code>Map&lt;<wbr>string<wbr>&gt;</code></td>
            <td class="align-top">{{% md %}}
A map of request query string parameters and headers that should be passed to the backend responder.
For example: `request_parameters = { "integration.request.header.X-Some-Other-Header" = "method.request.header.X-Some-Header" }`

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">request<wbr>Templates</td>
            <td class="align-top"><code>Map&lt;<wbr>string<wbr>&gt;</code></td>
            <td class="align-top">{{% md %}}
A map of the integration's request templates.

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">resource<wbr>Id</td>
            <td class="align-top"><code>string</code></td>
            <td class="align-top">{{% md %}}
The API resource ID.

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">rest<wbr>Api</td>
            <td class="align-top"><code>RestApi</code></td>
            <td class="align-top">{{% md %}}
The ID of the associated REST API.

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">timeout<wbr>Milliseconds</td>
            <td class="align-top"><code>number</code></td>
            <td class="align-top">{{% md %}}
Custom timeout between 50 and 29,000 milliseconds. The default value is 29,000 milliseconds.

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">type</td>
            <td class="align-top"><code>string</code></td>
            <td class="align-top">{{% md %}}
The integration input's [type](https://docs.aws.amazon.com/apigateway/api-reference/resource/integration/). Valid values are `HTTP` (for HTTP backends), `MOCK` (not calling any real backend), `AWS` (for AWS services), `AWS_PROXY` (for Lambda proxy integration) and `HTTP_PROXY` (for HTTP proxy integration). An `HTTP` or `HTTP_PROXY` integration with a `connection_type` of `VPC_LINK` is referred to as a private integration and uses a VpcLink to connect API Gateway to a network load balancer of a VPC.

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">uri</td>
            <td class="align-top"><code>string</code></td>
            <td class="align-top">{{% md %}}
The input's URI. **Required** if `type` is `AWS`, `AWS_PROXY`, `HTTP` or `HTTP_PROXY`.
For HTTP integrations, the URI must be a fully formed, encoded HTTP(S) URL according to the RFC-3986 specification . For AWS integrations, the URI should be of the form `arn:aws:apigateway:{region}:{subdomain.service|service}:{path|action}/{service_api}`. `region`, `subdomain` and `service` are used to determine the right endpoint.
e.g. `arn:aws:apigateway:eu-west-1:lambda:path/2015-03-31/functions/arn:aws:lambda:eu-west-1:012345678901:function:my-func/invocations`

{{% /md %}}</td>
        </tr>
    </tbody>
</table>

## Look up an Existing Integration Resource

{{< langchoose csharp >}}

```typescript
public static get(name: string, id: pulumi.Input<pulumi.ID>, state?: IntegrationState, opts?: pulumi.CustomResourceOptions): Integration;
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

Get an existing Integration resource's state with the given name, ID, and optional extra
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
            <td class="align-top">cache<wbr>Key<wbr>Parameters</td>
            <td class="align-top"><code>Array&lt;<wbr>string<wbr>&gt;</code></td>
            <td class="align-top">{{% md %}}
(Optional) A list of cache key parameters for the integration.

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">cache<wbr>Namespace</td>
            <td class="align-top"><code>string</code></td>
            <td class="align-top">{{% md %}}
(Optional) The integration's cache namespace.

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">connection<wbr>Id</td>
            <td class="align-top"><code>string</code></td>
            <td class="align-top">{{% md %}}
(Optional) The id of the VpcLink used for the integration. **Required** if `connection_type` is `VPC_LINK`

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">connection<wbr>Type</td>
            <td class="align-top"><code>string</code></td>
            <td class="align-top">{{% md %}}
(Optional) The integration input's [connectionType](https://docs.aws.amazon.com/apigateway/api-reference/resource/integration/#connectionType). Valid values are `INTERNET` (default for connections through the public routable internet), and `VPC_LINK` (for private connections between API Gateway and a network load balancer in a VPC).

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">content<wbr>Handling</td>
            <td class="align-top"><code>string</code></td>
            <td class="align-top">{{% md %}}
(Optional) Specifies how to handle request payload content type conversions. Supported values are `CONVERT_TO_BINARY` and `CONVERT_TO_TEXT`. If this property is not defined, the request payload will be passed through from the method request to integration request without modification, provided that the passthroughBehaviors is configured to support payload pass-through.

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">credentials</td>
            <td class="align-top"><code>string</code></td>
            <td class="align-top">{{% md %}}
(Optional) The credentials required for the integration. For `AWS` integrations, 2 options are available. To specify an IAM Role for Amazon API Gateway to assume, use the role's ARN. To require that the caller's identity be passed through from the request, specify the string `arn:aws:iam::\*:user/\*`.

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">http<wbr>Method</td>
            <td class="align-top"><code>string</code></td>
            <td class="align-top">{{% md %}}
(Optional) The HTTP method (`GET`, `POST`, `PUT`, `DELETE`, `HEAD`, `OPTION`, `ANY`)
when calling the associated resource.

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">integration<wbr>Http<wbr>Method</td>
            <td class="align-top"><code>string</code></td>
            <td class="align-top">{{% md %}}
(Optional) The integration HTTP method
(`GET`, `POST`, `PUT`, `DELETE`, `HEAD`, `OPTIONs`, `ANY`, `PATCH`) specifying how API Gateway will interact with the back end.
**Required** if `type` is `AWS`, `AWS_PROXY`, `HTTP` or `HTTP_PROXY`.
Not all methods are compatible with all `AWS` integrations.
e.g. Lambda function [can only be invoked](https://github.com/awslabs/aws-apigateway-importer/issues/9#issuecomment-129651005) via `POST`.

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">passthrough<wbr>Behavior</td>
            <td class="align-top"><code>string</code></td>
            <td class="align-top">{{% md %}}
(Optional) The integration passthrough behavior (`WHEN_NO_MATCH`, `WHEN_NO_TEMPLATES`, `NEVER`).  **Required** if `request_templates` is used.

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">request<wbr>Parameters</td>
            <td class="align-top"><code>Map&lt;<wbr>string<wbr>&gt;</code></td>
            <td class="align-top">{{% md %}}
(Optional) A map of request query string parameters and headers that should be passed to the backend responder.
For example: `request_parameters = { "integration.request.header.X-Some-Other-Header" = "method.request.header.X-Some-Header" }`

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">request<wbr>Templates</td>
            <td class="align-top"><code>Map&lt;<wbr>string<wbr>&gt;</code></td>
            <td class="align-top">{{% md %}}
(Optional) A map of the integration's request templates.

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">resource<wbr>Id</td>
            <td class="align-top"><code>string</code></td>
            <td class="align-top">{{% md %}}
(Optional) The API resource ID.

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">rest<wbr>Api</td>
            <td class="align-top"><code>RestApi</code></td>
            <td class="align-top">{{% md %}}
(Optional) The ID of the associated REST API.

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">timeout<wbr>Milliseconds</td>
            <td class="align-top"><code>number</code></td>
            <td class="align-top">{{% md %}}
(Optional) Custom timeout between 50 and 29,000 milliseconds. The default value is 29,000 milliseconds.

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">type</td>
            <td class="align-top"><code>string</code></td>
            <td class="align-top">{{% md %}}
(Optional) The integration input's [type](https://docs.aws.amazon.com/apigateway/api-reference/resource/integration/). Valid values are `HTTP` (for HTTP backends), `MOCK` (not calling any real backend), `AWS` (for AWS services), `AWS_PROXY` (for Lambda proxy integration) and `HTTP_PROXY` (for HTTP proxy integration). An `HTTP` or `HTTP_PROXY` integration with a `connection_type` of `VPC_LINK` is referred to as a private integration and uses a VpcLink to connect API Gateway to a network load balancer of a VPC.

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">uri</td>
            <td class="align-top"><code>string</code></td>
            <td class="align-top">{{% md %}}
(Optional) The input's URI. **Required** if `type` is `AWS`, `AWS_PROXY`, `HTTP` or `HTTP_PROXY`.
For HTTP integrations, the URI must be a fully formed, encoded HTTP(S) URL according to the RFC-3986 specification . For AWS integrations, the URI should be of the form `arn:aws:apigateway:{region}:{subdomain.service|service}:{path|action}/{service_api}`. `region`, `subdomain` and `service` are used to determine the right endpoint.
e.g. `arn:aws:apigateway:eu-west-1:lambda:path/2015-03-31/functions/arn:aws:lambda:eu-west-1:012345678901:function:my-func/invocations`

{{% /md %}}</td>
        </tr>
    </tbody>
</table>

## Import an Existing Integration Resource

TODO

## Support Types
