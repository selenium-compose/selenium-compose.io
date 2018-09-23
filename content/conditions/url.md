---
title: Url
menu:
  docs:
    parent: "conditions"
    weight: 30
---

Assert the current page's url. All comparision are performed in case-insensitive manner for url.
## Key

Url goes under `url` key.

## Properties

Name|Description|Type|Required
---|---|---|---
is|Expect the current page's url to be the given string|string|`false`
contains|Expect the current page's url to contain the given string'|string|`false`
starts|Expect the current page's url to start the given string'|string|`false`
ends|Expect the current page's url to end with the given string'|string|`false`
matches|Expect the current page's url to end with the given string'|string|`false`
schema|Expect the current page's url schema is the given string (http or https)'|string|`false`
ignorecase||bool|`false`
timeout|Wait until the expected condition has been satisfied|Duration|`false`

## Usage

### Inline

Use inline syntax to expect the current url contains the piece of string.
```yaml
- url: https://selenium-compose.io | $website_url
```

### Mapping

Use mapping syntax to configure all available options of `url` described above.
#### Is

Expect the current page's url is equal to the given string.
```yaml
- url:
    is: https://selenium-compose.io | $is_is
    timeout: 200ms | $url_is_timeout
    ignore_case: true | false
```

#### Contain

Expect the current page's url contains the given string.
```yaml
- url:
    contains: https://selenium-compose.io | $contains_contains
    timeout: 200ms | $url_contains_timeout
    ignore_case: true | false
```

#### Start

Expect the current page's url starts with the given string.
```yaml
- url:
    starts: https://sel | $starts_starts
    timeout: 200ms | $url_starts_timeout
    ignore_case: true | false
```

#### End

Expect the current page's url ends with the given string.
```yaml
- url:
    ends: https://selenium-compose.io | $ends_ends
    timeout: 200ms | $url_ends_timeout
    ignore_case: true | false
```

#### Match

Expect the current page's url matches with the given pattern.
```yaml
- url:
    pattern: "[a-zA-Z\\/0-8\.:]" | $ends_ends
    timeout: 200ms | $url_ends_timeout
    ignore_case: true | false
```
