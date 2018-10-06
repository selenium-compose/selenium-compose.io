---
title: Click
description: Perform a click on a WebElement or the web page
categories: [actions]
authors: ["Aram Petrosyan"]
keywords: [action,click]
menu:
  docs:
    parent: "actions"
    weight: 5
draft: false
toc: true    
---

If a WebElement located `click` waits until the WebElement become clickable before performing click unless
`ignore_clickable` has been set `true`

{{% note %}}
Skip using `ignore_clickable` property unless you really have to. Each WebElement has to be checked if it is clickable before performing click on it.

If the flag has been set to `true` and the WebElement is not present in the DOM or is not clickable the scenario will fail which may cause confusion in debugging.
{{% /note %}}

There are some preconditions for an element to be clickable

* The WebElement must be visible
* It must have a height and width greater then 0.

`click` can be performed on one WebElement at a time to avoid ambiguity, therefore, if multiple WebElements located the scenario will fail unless `resolve` property has been set.

There is no pre-condition to perform a click on the web page.

## Properties

Name|Description|Type|Required
---|---|---|---
location|Web element location|string|`false`
selector|Methods by which to find elements|string|`false`
resolve|Resolver|string|`false`
button|Mouse left, right or middle button to click.|string|`false`
hold|Hold down keys or modifier while performing click|string|`false`
timeout|The amount of time to wait until Web Element becomes clickable|Duration|`false`
ignore_clickable|Perform click on Web Element without expecting element to be clickable|bool|`false`

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
