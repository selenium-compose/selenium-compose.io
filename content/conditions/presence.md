---
title: Presence
description: Assert presence of a WebElement(s) in the DOM
categories: [conditions]
authors: ["Aram Petrosyan"]
keywords: [condition,assertion,presence]
menu:
  docs:
    parent: "conditions"
    weight: 10
draft: false
toc: true    
---

`presence` waits until at least one WebElement is physically present in the DOM at the given location at any state

## Properties

Name|Description|Type|Required
---|---|---|---
location|Web element location|string|`true`
selector|Methods by which to find elements|string|`false`
count|Count of expected invisible elements|Count|`false`
timeout|Wait until the expected condition has been satisfied|Duration|`false`

## Syntax

`presence` accepts a string or a map of values.

### Inline

Use inline syntax if you need to wait until at least one WebElement is presence in the DOM using default `selector` and `timeout`

```yaml
- presence: location | $element_location
```

### Mapping

Use mapping syntax to configure all properties

```yaml
- presence:
    location: location | $element_location
    selector: css | xpath | id | name | tag | class
    count:
      is: 3 | $el_num
      less: 4 | $el_max_num
      more: 1 | $el_min_num
    timeout: 500ms | 10s | 3m | $timeout
```

## Basic usage

Consider the following snippet

```HTML
<div class='login-popup'>
  ...
</div>
```

make sure that the menu all items become invisible
