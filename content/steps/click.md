---
title: Click
description: Perform a click on a WebElement or the web page
categories: [steps]
authors: ["Aram Petrosyan"]
keywords: [steps,click]
menu:
  docs:
    parent: "steps"
    weight: 4
draft: false
toc: true    
---

If a WebElement location is given `click` waits until the WebElement become clickable before performing click unless
`ignore_clickable` has been set `true`

{{% note %}}
Avoid using `ignore_clickable` property unless you really have to. Each WebElement has to be checked if it is clickable before performing click on it.

If the flag has been set to `true` and the WebElement is not present in the DOM or is not clickable the scenario will fail which may cause confusion.
{{% /note %}}

There are some preconditions for an element to be clickable

* The WebElement must be visible
* It must have a height and width greater then 0.

`click` can be performed on one WebElement at a time to avoid any ambiguity, therefore, if multiple WebElements located the scenario will fail unless `resolve` property has been set.

If the location is not given or its value is `document` a click is performed on the webpage at the mouse current position and there is no pre-condition to perform a click.

## Properties

Name|Description|Type|Required
---|---|---|---
location|Web Element location|`string`|`false`
selector|Methods by which to find elements|`string`|`false`
resolve|Resolver|`string`|`false`
button|Mouse left, right or middle button to click|`string`|`false`
hold|Hold down keys or modifier while performing click. See the list of [Special Keys](/action/special)|`string`|`false`
timeout|The amount of time to wait until Web Element becomes clickable|`Duration`|`false`
ignore_clickable|Perform click on Web Element without expecting element to be clickable|`bool`|`false`

## Syntax

`click` accepts a string or a map of values

### Inline

Use inline syntax to perform a click on a WebElement using provided location and the default selector or on the webpage at the mouse current position.
Please make sure you are precise on your selection to target only one Web Element,
otherwise the test will fail in case of multiple elements found.

```yaml
- click: <string> | $submit_btn
```

### Mapping

Use mapping syntax to configure available properties

```yaml
- click:
    location: <string> | $element_location
    selector: <string>
    resolve: <string>
    ignore_clickable: <bool>
    button: <string>
    hold: <string>
    timeout: <Duration> | $timeout
```

## Basic Usage

Say there is a WebElement in the DOM and we want to perform a simple mouse left button click on it

```yaml
- click: .confirm_btn
```

this will wait until there is a button in the DOM with class name `.confirm_btn`, wait until it is clickable and perform the click

or

```yaml
- click:
    location: .confirm_btn
    selector: css
```

or on webpage at the mouse current position

```yaml
- click: document
```

## Hold Keys

Hold keys or modifiers while performing a click on a WebElement

```yaml
- click:
    location: .confirm_btn
    hold: @ctrl @shirt
```

This will make sure the Element presence, clickability, hold down `ctrl+shift` [Keys](/action/special), perform the click and release the keys afterwards.

## Mouse Button

Perform mouse `left`, `middle` or `right` click on a WebElement or webpage at the mouse current position

```yaml
- click:
    location: document
    button: left | middle | right
```

## Resolve

In case of multiple elements found, resolve provides a way to specify to which WebElement resolve and perform the click before

```yaml
- click:
    location: .confirm_btn
    resolve: first | last
    selector: css
```

## Timeout

Set waiting `timeout` until the WebElement becomes clickable. Does not make sense if `ignore_clickable` has been set to `true`

```yaml
- click:
    timeout: 10s | 1m | 250ms | $timeout
    location: .confirm_btn
    selector: css
```
