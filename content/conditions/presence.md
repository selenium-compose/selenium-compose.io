---
title: Presence
menu:
  docs:
    parent: "conditions"
    weight: 15
---

Assert Web Elements presence in the DOM in any state.

`presence` allows to expect Web Elements presence in the DOM.
## Key

Presence goes under `presence` key.

## Properties

Name|Description|Type|Required
---|---|---|---
location|Web element location|string|`false`
selector|Methods by which to find elements|string|`false`
count|Count of expected present elements|Count|`false`
timeout|Wait until the expected condition has been satisfied|Duration|`false`

## Usage

`presence` accepts a string or a map of values.
### Inline

Use inline syntax to assert at least one Web Element presence at the given location with the default selector.
```yaml
- presence: .hash_code
```

### Mapping

Use mapping syntax to configure all available options of `presence` described above.
```yaml
- presence:
    location: "#profile" | $el_tobe_present
    selector: id
    timeout: 2s | $timeout

```
