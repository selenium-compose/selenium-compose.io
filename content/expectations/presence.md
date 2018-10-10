---
title: Presence
description: Assert presence of a WebElement(s) in the DOM
categories: [expectations]
authors: ["Aram Petrosyan"]
keywords: [expectations,assertion,presence]
menu:
  docs:
    parent: "expectations"
    weight: 10
draft: false
toc: true    
---

`presence` waits until at least one WebElement is physically present in the DOM at the given location at any state.

## Properties

Name|Description|Type|Required
---|---|---|---
location|Web Element location|string|`true`
selector|Methods by which to find elements|string|`false`
count|Count of expected invisible elements|Count|`false`
timeout|Wait until the expected condition has been satisfied|Duration|`false`

## Syntax

`presence` accepts a string or a map of values

### Inline

Use inline syntax if you need to wait until at least one WebElement is presence in the DOM using default `selector` and `timeout`

```yaml
- presence: location | $element_location
```

### Mapping

Use mapping syntax to configure all properties

```yaml
- presence:
    location: location | $element_location
    selector: css | xpath | id | name | tag | class
    count: <Count>
    timeout: <timeout> | $timeout
```

## Basic Usage

Wait until at least one WebElement is present at the given location

```yaml
- presence: .login-modal
```

or with the mapping syntax to override the default `selector` and `timeout`

```yaml
- presence:
    location: login-modal
    selector: id
    timeout: 250ms
```

## Count Usage

Wait until the count of present WebElement(s) is equal to the expected number

```yaml
- presence:
    location: .login-btn
    count: 3
```

or less then the expected number

```yaml
- presence:
    location: .login-btn
    count:
      less: 4
```

or more!

```yaml
- presence:
    location: .login-btn
    count:
      more: 2
```

## Timeout Usage

`timeout` refers to the amount of time to wait until the given condition(s) gets satisfied otherwise scenario will fail with a error. If `timeout` property has not been set the default timeout will be used

```yaml
- presence:
    location: .login-modal
    timeout: 400ms
```
