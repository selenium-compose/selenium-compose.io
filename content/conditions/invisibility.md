---
title: Invisibility
description: Assert invisibility of a WebElement(s) in the DOM
categories: [conditions]
authors: ["Aram Petrosyan"]
keywords: [condition,assertion,invisibility]
menu:
  docs:
    parent: "conditions"
    weight: 10
draft: false
toc: true    
---

`invisibility` waits for the located WebElement(s) to become invisible until the `timeout` has exceeded.
By default, it will wait until at least one WebElement at the given location is invisible.

`invisibility` accepts a string or a map of values.

## Properties

Name|Description|Type|Required
---|---|---|---
location|Web element location|string|`false`
selector|Methods by which to find elements|string|`false`
count|Count of expected invisible elements|Count|`false`
timeout|Wait until the expected condition has been satisfied|Duration|`false`


### Inline

Use inline syntax to wait until at least one WebElement is invisible at the given location with the default selector.
```yaml
- invisibility: .hash_code
```

### Mapping

Use mapping syntax to configure all available options of `invisibility` described above.
```yaml
- invisibility:
    location: .hash_code | $hash_location
    selector: css
    count: 5
    timeout: 100ms | $timeout

```
