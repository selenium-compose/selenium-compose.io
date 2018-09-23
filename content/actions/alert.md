---
title: Alert
menu:
  docs:
    parent: "actions"
    weight: 5
---

Alert waits until an alert appears on the current page to accept or decline.
## Key

Alert goes under `alert` key.

## Properties

Name|Description|Type|Required
---|---|---|---
is|Expect the current alert text is equal to the given string|string|`false`
contains|Expect the current alert text contains the given string|string|`false`
starts|Expect the current alert text starts the given string|string|`false`
ends|Expect the current alert text ends the given string|string|`false`
matches|Expect the current alert text matches the given pattern|string|`false`
ignore_case|Perform case-insensitive comparisons if the flag is true|bool|`false`
timeout||Duration|`false`
accept|Flag specifying whether accept or decline the current alert|bool|`false`

## Usage

### Accept

Accept the current alert.
```yaml
alert: true
```

### Decline

Decline the current alert.
```yaml
alert: false
```
