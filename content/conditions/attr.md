---
title: Attribute
description: Assert if the given attribute of an element satisfies the expected condition
categories: [conditions]
authors: ["Aram Petrosyan"]
keywords: [condition,assertion,attribute]
menu:
  docs:
    parent: "conditions"
    weight: 5
draft: false
toc: true    
---

## Properties

`attr` has the following available options

Name|Description|Type|Required
---|---|---|---
location|Web element location|string|`true`
selector|Methods by which to find elements|string|`false`
name|Web element attribute name|string|`true`
not_empty|Expect the element's attribute is not empty|bool|`false`
is|Expect the element's attribute is equal to the given string|string|`false`
contains|Expect the element's attribute contains to the given string|string|`false`
starts|Expect the element's attribute starts to the given string|string|`false`
ends|Expect the element's attribute ends to the given string|string|`false`
matches|Expect the element's attribute matches to the given pattern|string|`false`
ignore_case|Perform case-insensitive comparisons if the flag is true|bool|`false`
count|Expected elements count|Count|`false`
timeout|Wait until the expected condition has been satisfied|Duration|`false`

## Usage

`attr` condition accepts only a map of values.

### Not Empty

Assert the Web Element's attribute at the specified location is not empty.

{{< highlight yml >}}
- attr:
    location: .email | $email_input
    selector: css
    name: value
    not_empty: true
    timeout: 200ms | $attr_is_timeout
    ignore_case: true | false
{{< /highlight >}}

### Is

Assert the Web Element's attribute at the specified location is equal to the given string. If `is` condition is configured all other conditions are being ignored.
```yaml
- attr:
    location: .email | $email_input
    selector: css
    name: value
    is: aram.petrosyan.88@gmail.com | $user_email_is
    timeout: 200ms | $attr_is_timeout
    ignore_case: true | false
```

### Contain

Assert the Web Element's attribute at the specified location contains the given string.
```yaml
- attr:
    location: .email | $email_input
    selector: css
    name: value
    contains: petrosyan.88@gmail | $user_email_contains
    timeout: 200ms | $email_contains_timeout
    ignore_case: true | false
```

### Start

Assert the Web Element's attribute at the specified location starts with the given string.
```yaml
- attr:
    location: .email | $email_input
    selector: css
    name: value
    starts: aram.pet | $user_email_starts
    timeout: 200ms | $email_start_timeout
    ignore_case: true | false
```

### End

Assert the Web Element's attribute at the specified location ends with the given string.
```yaml
- attr:
    location: .email | $email_input
    selector: css
    name: value
    ends: .88@gmail.com | $user_email_ends
    timeout: 200ms | $email_end_timeout
    ignore_case: true | false
```

### Match

Assert the Web Element's attribute at the specified location ends with the given pattern.
```yaml
- attr:
    location: .email | $email_input
    selector: css
    name: value
    match: [a-z\\.0-9@]+ | $user_email_matches
    timeout: 200ms | $email_end_timeout
    ignore_case: true | false
```

### Mixed

It is also possible to mix `contains`, `starts`, `ends`, `matches` conditions.
```yaml
- attr:
    location: .email | $email_input
    selector: css
    name: value
    starts: aram.pet | $user_email_starts
    ends: .88@gmail.com | $user_email_ends
    contains: petrosyan.88@gmail | $user_email_contains
    match: [a-z\\.0-9@]+ | $user_email_matches
    timeout: 200ms | $email_end_timeout
    ignore_case: true | false
```
