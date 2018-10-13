---
title: Clear
description: Clear an input element value
categories: [steps]
keywords: [steps,clear]
menu:
  docs:
    parent: "steps"
    weight: 3
draft: false
toc: true    
---

`clear` waits until at least one WebElement is present in the DOM to clear its value unless `ignore_presence` has been set to `true`.

{{% note %}}
Avoid using `ignore_presence` property unless you really have to. If no WebElement is present the scenario will not fail and continue next steps execution, which may cause confusion in the expected behaviour of the composed scenario.
{{% /note %}}

If found WebElement(s) is a text entry element, `clear` will clear the value. Has no effect on other
elements. Text entry elements are INPUT and TEXTAREA elements.

{{% note %}}
Events fired by this event may not be as you'd expect. In particular, any keyboard or mouse events.
If you want to ensure keyboard events are fired, consider using something like <a href="/docs/type.html">type</a>
with the <a href="/steps/key/#special-keys">backspace</a> key.
{{% /note %}}

## Properties

Name|Description|Type|Required
---|---|---|---
location|Location of a WebElement(s)|`string`|`true`
selector|Selector to locate a WebElement(s) on the DOM|`string`|`false`
resolve|Resolve to the exact WebElement in case of multiple found|`string`|`false`
ignore_presence|Ignore waiting the WebElement(s) presence|`bool`|`false`
timeout|Waiting timeout until the located WebElement(s) is presence in the DOM|`Duration`|`false`

## Syntax

`clear` accepts a string or a map of values

### Inline

Use inline syntax to clear all located input WebElement(s) with default `selector` and `timeout`

```yaml
- clear: <string> | $element_location
```

### Mapping

Use mapping syntax to configure all properties.

```yaml
- clear:
    location: <string> | $element_location
    selector: <string>
    resolve: <string>
    ignore_presence: <bool>
    timeout: <Duration> | $timeout
```

## Basic Usage

Consider the following snippet

```HTML
<form class="form">
  <input type="text" class="form-control" name="name" value="" />

  <input type="text" class="form-control" name="email" value="" />
</form>
```

Clear the value of located input WebElements using the default `selector` and `timeout`.

```yaml
- clear: .form input
```

## Resolver Usage

Clear the first WebElement value

```yaml
- clear:
    location: .form input
    resolve: first
```

or the last

```yaml
- clear:
    location: .form input
    resolve: last
```

## Timeout Usage

Set waiting `timeout` until at least one WebElement is present at the given location

```yaml
- clear:
    location: .form input
    timeout: 20s
```
