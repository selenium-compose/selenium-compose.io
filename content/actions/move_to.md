---
title: Moveto Documentation
---

Move the mouse to relative coordinates from center of element, If the element is not visible, it will be scrolled into view.

 `move_to`  can be performed only on one element at a time, thus, be more precise in your selection to target the right element or use resolve to specify to which found element resolve.
## Key

MoveTo goes under `moveto` key.

## Properties

Name|Description|Type|Required
---|---|---|---
location|Web element location|string|`true`
selector|Methods by which to find elements|string|`false`
resolve|Resolver|string|`false`
x|The relative X coordinate from the center of element|int|`false`
y|The relative Y coordinate from the center of element|int|`false`

## Usage

### Inline

Use inline syntax to move to element using provided location and default selector.
```yaml
- move_to: .box | $box
```

### Mapping

Use mapping syntax to configure available options listed below.
#### Simple

provide element location and selector.
```yaml
- move_to:
    location: .box | $box
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
