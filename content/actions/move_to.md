---
title: Move To
description: Move the mouse to relative coordinates from center of element
categories: [actions]
authors: ["Aram Petrosyan"]
keywords: [action,move to]
menu:
  docs:
    parent: "actions"
    weight: 9
draft: false
toc: true    
---

If the element is not visible, it will be scrolled into view. `move_to` can be performed only on one element at a time, thus, be more precise in your selection to target the right element or use resolve to specify to which found element resolve. If `x` and `y` not given the mouse will be moved to the center coordinates of the WebElement

## Properties

Name|Description|Type|Required
---|---|---|---
location|Web element location|`string`|`true`
selector|Methods by which to find elements|`string`|`false`
resolve|Resolver|`string`|`false`
x|The relative X coordinate from the center of a WebElement|`int`|`false`
y|The relative Y coordinate from the center of element|`int`|`false`

## Syntax

`move_to` accepts a string or a map of values

### Inline

Use inline syntax to move to element using provided location and default selector

```yaml
- move_to: <string> | $element_location
```

### Mapping

Use mapping syntax to configure all properties

```yaml
- move_to:
    location: <string> | $element_location
    selector: <string>
    resolver: <string>
    x: <int>
    y: <int>
```

## Basic Usage

Move to the center of a WebElement

```yaml
- move_to: .reg_btn
```

or

```yaml
- move_to:
    location: .reg_btn
    selector: css
```

#### Coordinates

provide X, Y coordinates relative to the center of element.
```yaml
- move_to:
    location: .box | $box
    selector: css
    X: 10 | $x
    Y: 10 | $y

```

#### Resolve

specify to which element resolve in case of multiple elements found.
```yaml
- move_to:
    location: .box | $box
    selector: css
    resolve: first | last

```
