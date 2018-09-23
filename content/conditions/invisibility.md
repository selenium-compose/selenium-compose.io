---
title: Invisibility
menu:
  docs:
    parent: "conditions"
    weight: 10
---

Assert Web Elements invisibility.

`invisibility` allows to expect invisibility of Web Elements present in the DOM. A Web Element is considered to be invisible if it is not viewable on the page due to its styling or size.
## Key

Invisibility goes under `invisibility` key.

## Properties

Name|Description|Type|Required
---|---|---|---
location|Web element location|string|`false`
selector|Methods by which to find elements|string|`false`
count|Count of expected invisible elements|Count|`false`
timeout|Wait until the expected condition has been satisfied|Duration|`false`

## Usage

`invisibility` accepts a string or a map of values.
### Inline

Use inline syntax to assert at least one Web Element invisibility at the given location with the default selector.
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
