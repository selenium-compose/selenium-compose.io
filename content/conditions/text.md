---
title: Text
description: Assert the content or the value of a WebElement(s)
categories: [conditions]
authors: ["Aram Petrosyan"]
keywords: [condition,assertion,text]
menu:
  docs:
    parent: "conditions"
    weight: 10
draft: false
toc: true    
---

`text` waits until the located WebElement(s) content or value satisfies the expected condition(s).
if the WebElement is a text input its value will be asserted otherwise the content of the element.
If no condition is given `text` will wait until the WebElement value or content is not empty.

## Properties

Name|Description|Type|Required
---|---|---|---
location|Web element location|string|`false`
selector|Methods by which to find elements|string|`false`
is|Assert content or value of the located WebElement(s) is equal to the expected string|string|`false`
contains|Assert content or value of the located WebElement(s) contains the expected string|string|`false`
starts|Assert content or value of the located WebElement(s) starts with the expected string|string|`false`
ends|Assert content or value of the located WebElement(s) ends with the expected string|string|`false`
matches|Assert content or value of the located WebElement(s) matches the pattern|string|`false`
ignore_case|Perform case-insensitive comparisons if the flag is true|bool|`false`
count|Expected count of WebElements satisfying given condition(s)|[Count](/count)|`false`
timeout|Waiting timeout until the expected condition(s) has been satisfied|[Duration](/duration)|`false`

## Syntax

`text` accepts a string or a map of values

### Inline

Use inline syntax if to wait until content or value of at least one WebElement at the given location is not empty

```yaml
- text: <string> | $element_location
```

### Mapping

Use mapping syntax to configure all properties.

```yaml
- text:
    location: <string> | $element_location
    selector: <string>
    name: <string> | $input_value
    is: <string> | $text_value
    starts: <string> | $text_value_starts
    ends: <string> | $text_value_ends
    contains: <string> | $text_contains
    matches: <string> | $text_pattern
    ignore_case: <bool>
    count: <Count>
    timeout: <timeout> | $timeout
```

## Assertions Usage

All comparisons are case-sensitive unless `ignore_case` has been set to `true`

### Not Empty

Wait until there is at least one located WebElement in the DOM with non-empty content

```yaml
- text: .about_me | $element_location
```

### Is

Wait until there is at least one located WebElement in the DOM whose content is equal to the expected value

```yaml
- text:
    location: .about_me
    is: Big ba-na-nana ooh na-na-nana
```

### Contains

Wait until there is at least one located WebElement in the DOM whose content contains the expected value

```yaml
- text:
    location: .about_me | $element_location
    contains: -na-nana ooh | $content_contains
```

### Starts

Wait until there is at least one located WebElement in the DOM whose content starts with the expected value

```yaml
- text:
    location: .about_me | $element_location
    starts: Big ba-na-nana | $content_starts
```

### Ends

Wait until there is at least one located WebElement in the DOM whose content ends with the expected value

```yaml
- text:
    location: .about_me | $element_location
    ends: ooh na-na-nana | $content_ends
```

### Matches

Wait until there is at least one located WebElement in the DOM whose content matches the expected pattern

```yaml
- text:
    location: .about_me | $element_location
    matches: "[a-z\\-]+" | $content_matches
```

#### Mixed

It is possible to mix `contains`, `starts`, `ends`, `matches` properties to wait until
the content of the located WebElement contains, starts, ends and matches the pattern
at the same time

{{% note %}}
If `is` condition is given all other conditions will be ignored.
{{% /note %}}

```yaml
- attr:
    location: .about_me | $element_location
    ends: ooh na-na-nana | $content_ends
    starts: Big ba-na-nana | $content_starts
    contains: -na-nana ooh | $content_contains
    match: [a-z\\.0-9@]+ | $content_matches
```

## Count Usage

Wait until the count of present WebElement(s) with the content satisfying the given condition(s) is equal to the expected number

```yaml
- text:
    location: .about-me
    count: 2
```

or less then the expected number

```yaml
- text:
    location: .about-me
    count:
      less: 4
```

or more!

```yaml
- text:
    location: .about-me
    count:
      more: 2
```

## Timeout Usage

`timeout` refers to the amount of time to wait until the given condition(s) gets satisfied otherwise scenario will fail with a error. If `timeout` property has not been set the default timeout will be used

```yaml
- text:
    location: .about-me
    is: Big ba-na-nana ooh na-na-nana
```
