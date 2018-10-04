---
title: Title
description: Assert the current page's title
categories: [conditions]
authors: ["Aram Petrosyan"]
keywords: [condition,assertion,title]
menu:
  docs:
    parent: "conditions"
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

Use inline syntax to expect the current title contains the piece of string.
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

```

#### Is

Expect the current title is equal to the given string.
```yaml
- title:
    is: Selenium Compose is awesome | $title_is
```

#### Contain

Expect the current title contains.
```yaml
- title:
    contains: Selenium Compose is awesome | $title_contains
```

#### Start

Expect the current title starts with the given string.
```yaml
- title:
    starts: Selenium Compose is awesome | $title_starts
```

#### End

Expect the current title ends with the given string.
```yaml
- title:
    ends: Selenium Compose is awesome | $title_ends
    timeout: 200ms | $title_ends_timeout
```

#### Match

Expect the current title matches the given pattern.
```yaml
- title:
    matches: "[a-zA-Z\\s]+" | $title_pattern
    timeout: 200ms | $title_ends_timeout
    ignore_case: true | false
```
