title: Type Documentation
---

Type into all found elements at the location.
## Key

Type goes under `type` key.

## Properties

Name|Description|Type|Required
---|---|---|---
location|Web element location|string|`false`
selector|Methods by which to find elements|string|`false`
resolve|Resolver|string|`false`
keys|characters to be typed into element|string|`false`

## Usage

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
