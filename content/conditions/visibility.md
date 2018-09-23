---
title: Visibility 
menu:
  docs:
    parent: "conditions"
    weight: 35
---

Assert Web Elements visibility.

`visibility` allows to expect visibility of Web Elements present in the DOM. A Web Element is considered to be visible if it is viewable on the page.
## Key

Visibility goes under `visibility` key.

## Properties

Name|Description|Type|Required
---|---|---|---
location|Web element location|string|`false`
selector|Methods by which to find elements|string|`false`
is|Expect the element visibility whose content or value is equal to the given string|string|`false`
contains|Expect the element visibility whose content or value contains the given string|string|`false`
starts|Expect the element visibility whose content or value starts with the given string|string|`false`
ends|Expect the element visibility whose content or value ends with the given string|string|`false`
matches|Expect the element visibility whose content or value matches the given string|string|`false`
ignore_case|Perform case-insensitive comparisons if the flag is true|bool|`false`
count|Expected visible elements count|Count|`false`
timeout|Wait until the expected condition has been satisfied|Duration|`false`

## Usage

`visibility` accepts a string or a map of values.
### Inline

Use inline syntax to assert at least one Web Element visibility at the given location with the default selector.
```yaml
- invisibility: .hash_code
```

### Mapping

Use mapping syntax to configure all available options of `visibility` described above.
#### No Condition

Expect visibility of Web Elements at the given location.
```yaml
- invisibility:
    location: .hash_code | $hash_location
    selector: css
    timeout: 100ms | $timeout

```

#### Is

Expect visibility of Web Elements whose text, content or value is equal to the given string.
```yaml
- invisibility:
    location: "#profile" | $profile
    selector: id
    is: "Aram Petrosyan (Yerevan, Armenia)"
    timeout: 100ms | $timeout

```

#### Contain

Expect visibility of Web Elements whose text, content or value contains the given string.
```yaml
- invisibility:
    location: "#profile" | $profile
    selector: id
    contains: Petrosyan (Yer
    timeout: 100ms | $timeout

```

#### Start

Expect visibility of Web Elements whose text, content or value starts with the given string.
```yaml
- invisibility:
    location: "#profile" | $profile
    selector: id
    starts: Aram Pet
    timeout: 100ms | $timeout

```

#### End

Expect visibility of Web Elements whose text, content or value ends with the given string.
```yaml
- invisibility:
    location: "#profile" | $profile
    selector: id
    ends: van, Armenia)
    timeout: 100ms | $timeout

```

#### Match

Expect visibility of Web Elements whose text, content or value matches the given pattern.
```yaml
- invisibility:
    location: "#profile" | $profile
    selector: id
    matches: "[a-zA-Z\\s\\(\\)]+"
    timeout: 100ms | $timeout

```

#### Match

It is also possible to mix `contains` `starts` `ends` `matches` condition.
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
