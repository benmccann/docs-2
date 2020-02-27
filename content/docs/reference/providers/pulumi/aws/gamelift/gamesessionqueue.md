---
title: "GameSessionQueue"
---

<!-- WARNING: this file was generated by the Pulumi Terraform Bridge (tfgen) Tool. -->
<!-- Do not edit by hand unless you're certain you know what you are doing! -->

<style>
  table td p { margin-top: 0; margin-bottom: 0; }
</style>

Provides an Gamelift Game Session Queue resource.

> This content is derived from https://github.com/terraform-providers/terraform-provider-aws/blob/master/website/docs/r/gamelift_game_session_queue.html.markdown.


## Create a GameSessionQueue Resource

{{< langchoose csharp >}}

<div class="highlight"><pre class="chroma"><code class="language-typescript" data-lang="typescript"><span class="k">new</span> <span class="nx"><a href=/docs/reference/pkg/nodejs/pulumi/aws/s3/#GameSessionQueue>GameSessionQueue</a></span><span class="p">(</span><span class="nx">name</span>: <span class="kt"><a href=https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/String>string</a></span><span class="p">,</span> <span class="nx">args?</span>: <span class="kt"><a href=/docs/reference/pkg/nodejs/pulumi/aws/s3/#GameSessionQueueArgs>GameSessionQueueArgs</a></span><span class="p">,</span> <span class="nx">opts?</span>: <span class="kt"><a href=/docs/reference/pkg/nodejs/pulumi/pulumi/#CustomResourceOptions>pulumi.CustomResourceOptions</a></span><span class="p">);</span></code></pre></div>

```python
def __init__(__self__, resource_name, opts=None, destinations=None, name=None, player_latency_policies=None, tags=None, timeout_in_seconds=None, __props__=None)
```

```go
func NewGameSessionQueue(ctx *pulumi.Context, name string, args *GameSessionQueueArgs, opts ...pulumi.ResourceOption) (*GameSessionQueue, error)

```

```csharp
public GameSessionQueue(string name, GameSessionQueueArgs? args = null, CustomResourceOptions? options = null)

```

Creates a GameSessionQueue resource with the given unique name, arguments, and options.

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
            <td class="align-top">destinations</td>
            <td class="align-top"><code>Array&lt;<wbr>string<wbr>&gt;</code></td>
            <td class="align-top">{{% md %}}
(Optional) List of fleet/alias ARNs used by session queue for placing game sessions.

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">name</td>
            <td class="align-top"><code>string</code></td>
            <td class="align-top">{{% md %}}
(Optional) Name of the session queue.

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">player<wbr>Latency<wbr>Policies</td>
            <td class="align-top"><code>Array&lt;<wbr><a href="#gamesessionqueueplayerlatencypolicy">Game<wbr>Session<wbr>Queue<wbr>Player<wbr>Latency<wbr>Policy</a><wbr>&gt;</code></td>
            <td class="align-top">{{% md %}}
(Optional) One or more policies used to choose fleet based on player latency. See below.

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">tags</td>
            <td class="align-top"><code>Map&lt;<wbr>any<wbr>&gt;</code></td>
            <td class="align-top">{{% md %}}
(Optional) Key-value mapping of resource tags

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">timeout<wbr>In<wbr>Seconds</td>
            <td class="align-top"><code>number</code></td>
            <td class="align-top">{{% md %}}
(Optional) Maximum time a game session request can remain in the queue.

{{% /md %}}</td>
        </tr>
    </tbody>
</table>

## GameSessionQueue Output Properties

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
Game Session Queue ARN.

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">destinations</td>
            <td class="align-top"><code>Array&lt;<wbr>string<wbr>&gt;</code></td>
            <td class="align-top">{{% md %}}
List of fleet/alias ARNs used by session queue for placing game sessions.

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">name</td>
            <td class="align-top"><code>string</code></td>
            <td class="align-top">{{% md %}}
Name of the session queue.

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">player<wbr>Latency<wbr>Policies</td>
            <td class="align-top"><code>Array&lt;<wbr><a href="#gamesessionqueueplayerlatencypolicy">Game<wbr>Session<wbr>Queue<wbr>Player<wbr>Latency<wbr>Policy</a><wbr>&gt;</code></td>
            <td class="align-top">{{% md %}}
One or more policies used to choose fleet based on player latency. See below.

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">tags</td>
            <td class="align-top"><code>Map&lt;<wbr>any<wbr>&gt;</code></td>
            <td class="align-top">{{% md %}}
Key-value mapping of resource tags

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">timeout<wbr>In<wbr>Seconds</td>
            <td class="align-top"><code>number</code></td>
            <td class="align-top">{{% md %}}
Maximum time a game session request can remain in the queue.

{{% /md %}}</td>
        </tr>
    </tbody>
</table>

## Look up an Existing GameSessionQueue Resource

{{< langchoose csharp >}}

```typescript
public static get(name: string, id: pulumi.Input<pulumi.ID>, state?: GameSessionQueueState, opts?: pulumi.CustomResourceOptions): GameSessionQueue;
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

Get an existing GameSessionQueue resource's state with the given name, ID, and optional extra
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
(Optional) Game Session Queue ARN.

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">destinations</td>
            <td class="align-top"><code>Array&lt;<wbr>string<wbr>&gt;</code></td>
            <td class="align-top">{{% md %}}
(Optional) List of fleet/alias ARNs used by session queue for placing game sessions.

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">name</td>
            <td class="align-top"><code>string</code></td>
            <td class="align-top">{{% md %}}
(Optional) Name of the session queue.

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">player<wbr>Latency<wbr>Policies</td>
            <td class="align-top"><code>Array&lt;<wbr><a href="#gamesessionqueueplayerlatencypolicy">Game<wbr>Session<wbr>Queue<wbr>Player<wbr>Latency<wbr>Policy</a><wbr>&gt;</code></td>
            <td class="align-top">{{% md %}}
(Optional) One or more policies used to choose fleet based on player latency. See below.

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">tags</td>
            <td class="align-top"><code>Map&lt;<wbr>any<wbr>&gt;</code></td>
            <td class="align-top">{{% md %}}
(Optional) Key-value mapping of resource tags

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">timeout<wbr>In<wbr>Seconds</td>
            <td class="align-top"><code>number</code></td>
            <td class="align-top">{{% md %}}
(Optional) Maximum time a game session request can remain in the queue.

{{% /md %}}</td>
        </tr>
    </tbody>
</table>

## Import an Existing GameSessionQueue Resource

TODO

## Support Types

#### GameSessionQueuePlayerLatencyPolicy

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
            <td class="align-top">maximum<wbr>Individual<wbr>Player<wbr>Latency<wbr>Milliseconds</td>
            <td class="align-top"><code>number</code></td>
            <td class="align-top">{{% md %}}
(Required) Maximum latency value that is allowed for any player.

{{% /md %}}</td>
        </tr>
        <tr>
            <td class="align-top">policy<wbr>Duration<wbr>Seconds</td>
            <td class="align-top"><code>number</code></td>
            <td class="align-top">{{% md %}}
(Optional) Length of time that the policy is enforced while placing a new game session. Absence of value for this attribute means that the policy is enforced until the queue times out.

{{% /md %}}</td>
        </tr>
    </tbody>
</table>
