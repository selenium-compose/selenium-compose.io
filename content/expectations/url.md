---
title: Url
description: Assert the current page's url
categories: [expectations]
authors: ["Aram Petrosyan"]
keywords: [expectations,assertion,url]
menu:
  docs:
    parent: "expectations"
    weight: 10
draft: false
toc: true    
---

`url` waits until the current page's url satisfy the expected condition(s)
Unlike all other conditions all `url` comparisons are case-insensitive.

## Properties

Name|Description|Type|Required
---|---|---|---
is|Expect the current page's url to be the given string|string|`false`
contains|Expect the current page's url to contain the given string'|string|`false`
starts|Expect the current page's url to start the given string'|string|`false`
ends|Expect the current page's url to end with the given string'|string|`false`
matches|Expect the current page's url to end with the given string'|string|`false`
timeout|Wait until the expected condition has been satisfied|Duration|`false`

## Syntax

`url` accepts a string or a map of values

### Inline

Use inline syntax to assert that the current page's url contains the expected string

```yaml
- url: <string> | $url_contains
```

### Mapping

Use mapping syntax to configure all available properties

```yaml
- title:
    is: <string> | $url_is
    contains: <string> | $url_contains
    starts: <string> | $url_starts
    ends: <string> | $url_ends
    matches: <string> | $url_pattern
    ignore_case: <bool>
    timeout: <timeout> | $timeout
```

## Assertions Usage

### Equal

Assert the current url is equal to the expected string

```yaml
- title:
    is: https://selenium-compose.io/ | $url_is
```

### Contains

Assert the current url contains the expected string

```yaml
- title:
    contains: selenium-compose | $url_contains
```

### Start

Assert the current url starts with the expected string

```yaml
- title:
    starts: https://selenium | $url_starts
```

### Ends

Assert the current url ends with the expected string

```yaml
- title:
    ends: -compose.io/ | $url_ends
```

### Matches

Assert the current url matches the expected pattern

```yaml
- title:
    matches: "^(?:https?:\/\/)?(?:[^@\/\n]+@)?(?:www\\.)?([^:\/\n]+)" | $url_pattern
```

## Mixed Usage

It is also possible to mix `contains` `starts` `ends` `matches` properties so the current url should satisfy all conditions at once

{{% note %}}
If `is` condition is given all others will be ignored.
{{% /note %}}

```yaml
- title:
    contains: selenium-compose
    start: https://
    ends: .io/
    matches: "^(?:https?:\/\/)?(?:[^@\/\n]+@)?(?:www\\.)?([^:\/\n]+)"
```

## Timeout Usage

Timeout refers to the maximum amount of time to wait until the expected condition(s) are satisfied

```yaml
- title:
    is: https://selenium-compose.io | $url_ends
    timeout: 300ms
```
