title: Submit Documentation
---

Submit a form or a submit button. 

Only one form can be submitted at a time, thus, be more precise in your selection to target the right form or use resolve to specify to which button or form resolve.
## Key

Submit goes under `submit` key.

## Properties

Name|Description|Type|Required
---|---|---|---
location|Web element location|string|`true`
selector|Methods by which to find elements|string|`false`
resolve|Resolver|string|`false`

## Usage

### Inline

Use inline syntax to submit a form or submit button at the provided location with the default selector.
```yaml
- submit: .form | .submit_btn | $form | $submit_btn
```

### Mapping

Use mapping syntax to configure all available options listed below.
#### Simple

```yaml
- submit: 
    location: .form | .submit_btn | $form | $submit_btn
    selector: css

```

#### Resolve

```yaml
- submit: 
    location: .form | .submit_btn | $form | $submit_btn
    selector: css
    resolve: first | last

```
