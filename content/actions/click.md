---
title: Click
menu:
  docs:
    parent: "actions"
    weight: 15
---

Click on a Web Element. There are some preconditions for an element to be clicked.
The element must be visible and it must have a height and width greater then 0.

Before performing click action it waits until the element becomes clickable.

Click action is allowed to be performed on one Web Element at a time, thus, if multiple
elements found and `resolve` is not given, the test fails with error.
## Key

Click goes under `click` key.

## Properties

Name|Description|Type|Required
---|---|---|---
location|Web element location|string|`false`
selector|Methods by which to find elements|string|`false`
resolve|Resolver|string|`false`
button|Mouse left, right or middle button to click.|string|`false`
hold|Hold down keys or modifier while performing click|string|`false`
timeout|The amount of time to wait until Web Element becomes clickable|Duration|`false`
ignoreclickable|Perform click on Web Element without expecting element to be clickable|bool|`false`

## Usage

### Inline

Use inline syntax to perform a click on a Web Element using provided location and the default selector.
Please make sure you are precise on your selection to target only one Web Element,
otherwise the test will fail in case of multiple elements found.
```yaml
- click: .submit | $submit_btn
```

### Mapping

Use mapping syntax to configure available options listed above.
#### Simple

Provide a Web Element location and selector.
Please make sure you are precise on your selection to target only one Web Element,
otherwise the test will fail in case of multiple elements found.
```yaml
- click:
    location: .reg | $reg_btn
    selector: css
```

#### Hold

Hold keys or modifiers while performing a click on a Web Element.
Please make sure you are precise on your selection to target only one Web Element,
otherwise the test will fail in case of multiple elements found.
```yaml
- click:
    location: .reg | $reg_btn
    hold: @ctrl @shirt
```

#### Button

Perform mouse click with specific button, if a Web Element location is not specified the click will be perform on the `document` at the mouse current position.
```yaml
- click:
    button: left | middle | right
```

#### Resolve

In case of multiple elements found, resolve options provides a way to specify to which element resolve and perform the click.
```yaml
- click:
    location: .reg | $reg_btn
    resolve: first | last
    selector: css
```

#### Wait Timeout

Provide the amount of time to wait until the Web Element becomes clickable.
```yaml
- click:
    waitUntilClickable: 10s | 1m | 250ms | $timeout
    location: .reg | $reg_btn
    selector: css
```
