---
title: Title
description: Assert the current page's title
categories: [expectations]
keywords: [expectations,assertion,title]
menu:
  docs:
    parent: "expectations"
    weight: 10
draft: false
toc: true    
---

`title` waits until the current page's title satisfy the expected condition(s)

## Properties

Name|Description|Type|Required
---|---|---|---
is|Expect the current page's title to be the given string|string|`false`
contains|Expect the current page's title to contain the given string'|string|`false`
starts|Expect the current page's title to start the given string'|string|`false`
ends|Expect the current page's title to end with the given string'|string|`false`
matches|Expect the current page's title to end with the given string'|string|`false`
ignore_case|Perform case-insensitive comparisons if the flag is true|bool|`false`
timeout|Waiting timeout until the expected condition(s) has been satisfied|[Duration](/duration)|`false`

## Syntax

`title` accepts a string or a map of values

### Inline

Use inline syntax to assert that the current page's title contains the expected string
in case-sensitive manner

```yaml
- title: <string> | $title_contains
```

### Mapping

Use mapping syntax to configure all available properties

```yaml
- title:
    is: <string> | $title_is
    contains: <string> | $title_contains
    starts: <string> | $title_starts
    ends: <string> | $title_ends
    matches: <string> | $title_pattern
    ignore_case: <bool>
    timeout: <timeout> | $timeout
```

## Assertions Usage

By default, all comparisons are case-sensitive unless `ignore_case` has been set to `true`

### Equal

Assert the current title is equal to the expected string

```yaml
- title:
    is: Selenium Compose is awesome | $title_is
```

### Contains

Assert the current title contains the expected string

```yaml
- title:
    contains: Selenium Compose is awesome | $title_contains
```

### Start

Assert the current title starts with the expected string

```yaml
- title:
    starts: Selenium Compose is awesome | $title_starts
```

### Ends

Assert the current title ends with the expected string

```yaml
- title:
    ends: Selenium Compose is awesome | $title_ends
```

### Matches

Assert the current title matches the expected pattern

{{% note %}}
`ignore_case` property does not make any change
{{% /note %}}

```yaml
- title:
    matches: "[a-zA-Z\\s]+" | $title_pattern
```

## Mixed Usage

It is also possible to mix `contains` `starts` `ends` `matches` properties so the current page's title should satisfy all conditions at once

{{% note %}}
If `is` condition is given all others will be ignored.
{{% /note %}}

```yaml
- title:
    contains: nium comp
    start: Selen
    ends: pose
    matches: [\w+\s]+
```

## Timeout Usage

Timeout refers to the maximum amount of time to wait until the expected condition(s) are satisfied

```yaml
- title:
    is: Selenium Compose is awesome | $title_ends
    timeout: 300ms
```
