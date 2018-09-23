---
title: Clear
menu:
  docs:
    parent: "actions"
    weight: 10
---

Clear waits until the element is present in the DOM to clear its value.

If found element(s) is a text entry element, `clear` will clear the value. Has no effect on other
elements. Text entry elements are INPUT and TEXTAREA elements. Note that the events fired by
this event may not be as you'd expect. In particular, any keyboard or mouse events.
If you want to ensure keyboard events are fired, consider using something like <a href="/docs/type.html">type</a> with the <a href="/docs/type.html#backspace">backspace</a> key.
## Key

Clear goes under `clear` key.

## Properties

Name|Description|Type|Required
---|---|---|---
location|Web element location|string|`true`
selector|Methods by which to find elements|string|`false`
resolve|Resolve to the exact element in case of multiple elements found. By default, all found elements selected|string|`false`
ignorepresence|Clean element's value without expecting its presence|bool|`false`
timeout|The amount of time to wait until the element is present in the DOM|Duration|`false`

## Usage

### Inline

Use inline syntax to clear all found elements' values at the given location with the default selector.
```yaml
- clear: .email | $email_input
```

### Mapping

Use mapping syntax to configure available options listed below for click action.
#### Simple

Provide a Web Element location and selector.
```yaml
- clear:
    location: .reg | $reg_btn
    selector: css
```

#### Resolve

Resolve to wanted element.
Please make sure you are precise on your selection to target only one Web Element,
otherwise the test will fail in case of multiple elements found.
```yaml
- clear:
    location: .reg | $reg_btn
    resolve: first | last
    selector: css
```
