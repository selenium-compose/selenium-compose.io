---
title: Invisibility
description: Assert invisibility of a WebElement(s)
categories: [expectations]
keywords: [expectations,assertion,invisibility]
menu:
  docs:
    parent: "expectations"
    weight: 10
draft: false
toc: true    
---

`invisibility` waits for the located WebElement(s) to become invisible until the `timeout` has exceeded.

## Properties

Name|Description|Type|Required
---|---|---|---
location|Web Element location|string|`true`
selector|Methods by which to find WebElements|string|`false`
count|Count of expected invisible WebElements|Count|`false`
timeout|Wait until the expected condition has been satisfied|Duration|`false`

## Syntax

`invisibility` accepts a string or a map of values

### Inline

Use inline syntax if you need to wait until at least one WebElement becomes invisible using default `selector` and `timeout`

```yaml
- invisibility: <string> | $element_location
```

### Mapping

Use mapping syntax to configure all properties

```yaml
- invisibility:
    location: <string> | $element_location
    selector: css | xpath | id | name | tag | class
    count: <Count>
    timeout: <timeout> | $timeout
```

## Basic usage

```yaml
- invisibility: .warning-popup
```

or with the mapping syntax to override the default `selector` and `timeout`

```yaml
- invisibility:
    location: warning-popup
    selector: id
    timeout: 2s
```

## Count usage

Wait until the count of invisible WebElement(s) is equal to the expected number

```yaml
- invisibility:
    selector: .menu .item
    count: 4
```

or less then expected number

```yaml
- invisibility:
    selector: .menu .item
    count:
      less: 5
```

or more!

```yaml
- invisibility:
    selector: .menu .item
    count:
      more: 5
```

## Timeout Usage

`timeout` refers to the amount of time to wait until the given condition(s) gets satisfied otherwise scenario will fail with a error. If `timeout` property has not been set the default timeout will be used

```yaml
- invisibility:
    selector: .menu .item
    count: 4
    timeout: 200ms
```
