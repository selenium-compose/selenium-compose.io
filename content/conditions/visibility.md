---
title: Visibility
description: Assert visibility of a WebElement(s)
categories: [conditions]
authors: ["Aram Petrosyan"]
keywords: [condition,assertion,visibility]
menu:
  docs:
    parent: "conditions"
    weight: 10
draft: false
toc: true    
---

`visibility` waits for the located WebElement(s) to become visible until the `timeout` has exceeded.
All comparisons are case-sensitive unless `ignore_case` has been set to `true`

## Properties

Name|Description|Type|Required
---|---|---|---
location|Web element location|string|`true`
selector|Methods by which to find elements|string|`false`
is|Expect the WebElement(s) visibility whose content or value is equal to the given string|string|`false`
contains|Expect the WebElement(s) visibility whose content or value contains the given string|string|`false`
starts|Expect the WebElement(s) visibility whose content or value starts with the given string|string|`false`
ends|Expect the WebElement(s) visibility whose content or value ends with the given string|string|`false`
matches|Expect the WebElement(s) visibility whose content or value matches the given string|string|`false`
ignore_case|Perform case-insensitive comparisons if the flag is true|bool|`false`
count|Count of expected visible WebElements|Count|`false`
timeout|Wait until the expected condition has been satisfied|Duration|`false`

## Syntax

`visibility` accepts a string or a map of values

### Inline

Use inline syntax to assert at least one WebElement is visible at the given location with the default `selector` and `timeout`

```yaml
- invisibility: <string> | $element_location
```

### Mapping

Use mapping syntax to configure all available properties

```yaml
- visibility:
    location: <string> | $element_location
    selector: <string>
    contains: <string> | $content_contains
    starts: <string> | $content_starts
    ends: <string> | $content_ends
    matches: <string> | $content_matches
    timeout: 100ms | $timeout
```

### No Condition

Assert visibility of WebElements at the given location

```yaml
- invisibility:
    location: .hash_code | $hash_location
    selector: css
    timeout: 100ms | $timeout
```

### Is

Assert visibility of WebElement(s) whose text, content or value is equal to the expected string.

```yaml
- invisibility:
    location: "#profile" | $profile
    selector: id
    is: "Aram Petrosyan (Yerevan, Armenia)"
```

### Contains

Assert visibility of WebElement(s) whose text, content or value contains the expected string

```yaml
- invisibility:
    location: "#profile" | $profile
    selector: id
    contains: Petrosyan (Yer
```

### Starts

Expect visibility of WebElement(s) whose text, content or value starts with the expected string

```yaml
- invisibility:
    location: "#profile" | $profile
    selector: id
    starts: Aram Pet
    timeout: 100ms | $timeout

```

### Ends

Assert visibility of Web Elements whose text, content or value ends with the expected string

```yaml
- invisibility:
    location: "#profile" | $profile
    selector: id
    ends: van, Armenia)
    timeout: 100ms | $timeout

```

#### Matches

Assert visibility of WebElement(s) whose text, content or value matches the expected pattern

```yaml
- invisibility:
    location: "#profile" | $profile
    selector: id
    matches: "[a-zA-Z\\s\\(\\)]+"
    timeout: 100ms | $timeout
```

### Mixed

It is also possible to mix `contains` `starts` `ends` `matches` condition

```yaml
- invisibility:
    location: "#profile" | $profile
    selector: id
    contains: Petrosyan (Yer
    starts: Aram Pet
    ends: van, Armenia)
    matches: "[a-zA-Z\\s\\(\\)]+"
    timeout: 100ms | $timeout
```

## Count usage

Assert the count of visible WebElement(s) is equal to the expected number

```yaml
- visibility:
    selector: .menu .item
    count: 4
```

or less then expected number

```yaml
- visibility:
    selector: .menu .item
    count:
      less: 5
```

or more!

```yaml
- visibility:
    selector: .menu .item
    count:
      more: 5
```

## Timeout Usage

`timeout` property refers to the amount of time to wait until the WebElement(s) become visible. If `timeout` property is not set the default timeout will be used.

```yaml
- invisibility:
    selector: .menu .item
    count: 4
    timeout: 200ms
```
