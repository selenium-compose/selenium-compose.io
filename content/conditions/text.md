---
title: Text
menu:
  docs:
    parent: "conditions"
    weight: 20
---

Assert a Web Element content or value.

`text` allows to expect Web Elements text, content or value to be equal to the expected value, contain, start, end with the piece of string or match the given pattern. If the element is an input its conditions are being checked against its value otherwise the element content.
## Key

Text goes under `text` key.

## Properties

Name|Description|Type|Required
---|---|---|---
location|Web element location|string|`false`
selector|Methods by which to find elements|string|`false`
notempty|Expect the element's content or value is not empty|bool|`false`
is|Expect the element's content or value is equal to the given string|string|`false`
contains|Expect the element's content or value contains the given string|string|`false`
starts|Expect the element's content or value starts with the given string|string|`false`
ends|Expect the element's content or value ends with the given string|string|`false`
matches|Expect the element's content or value matches the pattern|string|`false`
ignore_case|Perform case-insensitive comparisons if the flag is true|bool|`false`
count|Count of expected elements|Count|`false`
timeout|Wait until the expected condition has been satisfied|Duration|`false`

## Usage

`text` condition accepts only a map of values. See all available options described above.
### Not Empty

Expect text, content or value of the Web Elements at the specified location is not empty.
```yaml
- text:
    location: .about_me | $about_me
    selector: css
    not_empty: true
    timeout: 200ms | $timeout
```

### Is

Expect text, content or value of the Web Elements at the specified location is equal to the given string.
```yaml
- text:
    location: .about_me | $about_me
    selector: css
    is: Big ba-na-nana ooh na-na-nana | $content
    ignore_case: true | false
    timeout: 200ms | $timeout
```

### Contain

Expect text, content or value of the Web Elements at the specified location contains the given string.
```yaml
- text:
    location: .about_me | $about_me
    selector: css
    ignore_case: true | false
    contains: -na-nana ooh | $content_contains
    timeout: 200ms | $timeout
```

### Start

Expect text, content or value of the Web Elements at the specified location starts with the given string.
```yaml
- text:
    location: .about_me | $about_me
    selector: css
    ignore_case: true | false
    starts: Big ba-na-nana | $content_starts
    timeout: 200ms | $timeout
```

### End

Expect text, content or value of the Web Elements at the specified location ends with the given string.
```yaml
- text:
    location: .about_me | $about_me
    selector: css
    ignore_case: true | false
    ends: ooh na-na-nana | $content_ends
    timeout: 200ms | $timeout
```

### Match

Expect Web Elements text, content or value of the Web Elements at the specified location matches the given pattern.
```yaml
- text:
    location: .about_me | $about_me
    selector: css
    ignore_case: true | false
    matches: "[a-z\\-]+" | $content_matches
    timeout: 200ms | $timeout
```
