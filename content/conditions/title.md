---
title: Title
menu:
  docs:
    parent: "conditions"
    weight: 25
---

Assert the current page's title.
## Key

Title goes under `title` key.

## Properties

Name|Description|Type|Required
---|---|---|---
is|Expect the current page's title to be the given string|string|`false`
contains|Expect the current page's title to contain the given string'|string|`false`
starts|Expect the current page's title to start the given string'|string|`false`
ends|Expect the current page's title to end with the given string'|string|`false`
matches|Expect the current page's title to end with the given string'|string|`false`
ignorecase||bool|`false`
timeout|Wait until the expected condition has been satisfied|Duration|`false`

## Usage

### Inline

Use inline syntax to expect the current title contains the piece of string.
```yaml
- title: Selenium Compose | $title_contains
```

### Mapping

Use mapping syntax to configure all available options of `title` described above.
#### Is

Expect the current title is equal to the given string.
```yaml
- title:
    is: Selenium Compose is awesome | $title_is
    timeout: 200ms | $title_is_timeout
    ignore_case: true | false
```

#### Contain

Expect the current title contains.
```yaml
- title:
    contains: Selenium Compose is awesome | $title_contains
    timeout: 200ms | $title_contains_timeout
    ignore_case: true | false
```

#### Start

Expect the current title starts with the given string.
```yaml
- title:
    starts: Selenium Compose is awesome | $title_starts
    timeout: 200ms | $title_starts_timeout
    ignore_case: true | false
```

#### End

Expect the current title ends with the given string.
```yaml
- title:
    ends: Selenium Compose is awesome | $title_ends
    timeout: 200ms | $title_ends_timeout
    ignore_case: true | false
```

#### Match

Expect the current title matches the given pattern.
```yaml
- title:
    matches: "[a-zA-Z\\s]+" | $title_pattern
    timeout: 200ms | $title_ends_timeout
    ignore_case: true | false
```
