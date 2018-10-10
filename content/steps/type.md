---
title: Type
description: Type into all located WebElements
categories: [steps]
authors: ["Aram Petrosyan"]
keywords: [steps,navigation]
menu:
  docs:
    parent: "steps"
    weight: 18
draft: false
toc: true
---

## Properties

Name|Description|Type|Required
---|---|---|---
location|Web Element location|string|`true`
selector|Methods by which to find elements|string|`false`
resolve|Resolver|string|`false`
timeout|The amount of time to wait until Web Element becomes clickable|`Duration`|`false`
ignore_presence|Do not wait until the location WebElement is present|`bool`|`false`

## Syntax

`type` accepts a string or a map of values

### Simple

```yaml
- type:
    location: .email_input | $input
    selector: css
    keys: "aram.petrosyan.88@gmail.com"

```

### Resolve

Specify to which element resolve in case multiple elements found.
```yaml
- type:
    location: .email_input | $input
    selector: css
    keys: "aram.petrosyan.88@gmail.com"
    resolve: first | last

```
