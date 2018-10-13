---
title: Submit
description: Submit a form or a submit button
categories: [steps]
keywords: [steps,resize]
menu:
  docs:
    parent: "steps"
    weight: 16
draft: false
toc: true    
---

`submit` waits until a WebElement is present to submit

{{% note %}}
Only one form can be submitted at a time, thus, be more precise in your selection to target the right form or use resolve to specify to which button or form resolve
{{% /note %}}

{{% note %}}
Avoid using `ignore_clickable` property unless you really have to. Before submitting the WebElement is has to be present in the DOM.

If the flag has been set to `true` and the WebElement is not present in the DOM or is not clickable the scenario will fail which may cause confusion.
{{% /note %}}

## Properties

Name|Description|Type|Required
---|---|---|---
location|Web Element location|string|`true`
selector|Methods by which to find elements|string|`false`
resolve|Resolver|string|`false`
timeout|The amount of time to wait until Web Element becomes clickable|`Duration`|`false`
ignore_presence|Do not wait until the location WebElement is present|`bool`|`false`

## Syntax

`submit` accepts a string or a map of values

### Inline

Use inline syntax to submit a form or submit button with the default `selector` and waiting `timeout`

```yaml
- submit: <string> | $element_location
```

### Mapping

Use mapping syntax to configure all properties

```yaml
- submit:
    location: <string> | $element_location
    selector: <string>
    resolve: string
    timeout: <Duration> | $timeout
    ignore_presence: <bool>
```

## Basic Usage

Submit a simple form

```yaml
- submit: .registration
```

or

```yaml
- submit:
    location: registration
    selector: id
```

## Resolve

Submit the first form in case of multiple found at the location

```yaml
- submit:
    location: .form
    selector: css
    resolve: first
```

or the last

```yaml
- submit:
    location: .form
    selector: css
    resolve: last
```

## Timeout

Set `timeout` to wait until the WebElement is present

```yaml
- submit:
    location: .form
    selector: css
    timeout: 3s
```


## Ignore Presence

Do not wait until the WebElement is presence, in this case `timeout` does not make sense

```yaml
- submit:
    location: .form
    selector: css
    ignore_presence: true
```
