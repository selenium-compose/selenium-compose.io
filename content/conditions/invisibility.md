---
title: Invisibility
description: Assert invisibility of a WebElement(s)
categories: [conditions]
authors: ["Aram Petrosyan"]
keywords: [condition,assertion,invisibility]
menu:
  docs:
    parent: "conditions"
    weight: 10
draft: false
toc: true    
---

`invisibility` waits for the located WebElement(s) to become invisible until the `timeout` has exceeded.

## Properties

Name|Description|Type|Required
---|---|---|---
location|Web element location|string|`true`
selector|Methods by which to find elements|string|`false`
count|Count of expected invisible elements|Count|`false`
timeout|Wait until the expected condition has been satisfied|Duration|`false`

## Syntax

`invisibility` accepts a string or a map of values.

### Inline

Use inline syntax if you need to wait until at least one WebElement become invisible using default `selector` and `timeout`

```yaml
- invisibility: <string> | $element_location
```

### Mapping

Use mapping syntax to configure all properties

```yaml
- invisibility:
    location: <string> | $element_location
    selector: css | xpath | id | name | tag | class
    count:
      is: <number> | $el_num
      less: <number> | $el_max_num
      more: <number> | $el_min_num
    timeout: <timeout> | $timeout
```

## Basic usage

Consider the following snippet  

```HTML
<div class='warning-popup' id='#warning-popup'>
  <div class='header'>
    <button class='close'></button>
  </div>
  <div class='body'>Sure?!</div>
</div>
```

which should become invisible after the close button has been clicked.

```yaml
- invisibility: .warning-popup
```

or with the mapping syntax to override the default `selector` and `timeout`

```yaml
- invisibility:
    location: warning-popup
    selector: id
```

## Count usage

Consider the following snippet

```HTML
<ul class="menu">
  <li class="item active" href="#home">Home</a>
  <li class="item">News</a>
  <li class="item">Contact</a>
  <li class="item">About</a>
</ul>
```

wait until all items of the menu become invisible


```yaml
- invisibility:
    selector: .menu .item
    count:
      is: 4
      less: 5
      more: 2
```

or just

```yaml
- invisibility:
    selector: .menu .item
    count: 4
```

## Timeout Usage

`timeout` property refers to the amount of time to wait until the WebElement(s) become invisible. If `timeout` property is not set the default timeout will be used.

```yaml
- invisibility:
    selector: .menu .item
    count: 4
    timeout: 200ms
```
