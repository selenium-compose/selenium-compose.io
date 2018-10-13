---
title: Attribute
description: Assert the given attribute of a WebElement(s)
categories: [expectations]
keywords: [expectations,assertion,attribute]
menu:
  docs:
    parent: "expectations"
    weight: 5
draft: false
toc: true
---

`attr` waits for the given attribute of the located WebElement(s) to
satisfy one or more expected conditions until the `timeout` has exceeded.
By default, if no condition is given it will wait until the attribute
is not empty.

## Properties

Name|Description|Type|Required
---|---|---|---
location|Location of a WebElement(s)|string|`true`
selector|Selector to locate a WebElement(s) on the DOM|string|`false`
name|The name of the WebElement(s) attribute|string|`true`
is|Assert the given attribute is equal to the expected value|string|`false`
contains|Assert the given attribute contains the expected value|string|`false`
starts|Assert the given attribute starts with the expected value|string|`false`
ends|Assert the given attribute ends with the expected value|string|`false`
matches|Assert the given attribute matches the expected pattern|string|`false`
ignore_case|Perform case-insensitive comparisons if the flag is true|bool|`false`
count|Expected count of WebElements satisfying given condition(s) |[Count](/count)|`false`
timeout|Waiting timeout until the expected condition(s) has been satisfied|[Duration](/duration)|`false`

## Syntax

`attr` accepts a map of values.

```yaml
- attr:
    location: <string> | $element_location
    selector: css | xpath | id | name | tag | class
    name: <string> | $input_value
    is: <string> | $attr_value
    starts: <string> | $attr_value_starts
    ends: <string> | $attr_value_ends
    contains: <string> | $attr_contains
    matches: <string> | $attr_pattern
    ignore_case: <bool>
    count: <Count>
    timeout: <timeout> | $timeout
```

See usage cases for each property in details.

## Assertions Usage

By default, each condition expects at least one WebElement satisfying the attribute condition
unless `count` property has explicitly been set.
All comparisons are case-sensitive unless `ignore_case` has been set to `true`

#### Not Empty

Wait until the `value` attribute of the WebElement is not empty

```yaml
- attr:
    location: .email
    name: value
```

#### Equals

Wait until the `value` attribute of the WebElement is equal to `some-email@gmail.com`

```yaml
- attr:
    location: .email
    name: value
    is: some-email@gmail.com
```

#### Contains

Wait until the `value` attribute of the WebElement contains to `me-email@gma`

```yaml
- attr:
    location: .email
    name: value
    contains: me-email@gma
```

#### Starts

Wait until the `value` attribute of the WebElement starts with `some-emai`

```yaml
- attr:
    location: .email
    name: value
    starts: aram.pet
```

#### Ends

Wait until the `value` attribute of the WebElement ends with `il@gmail.com`

```yaml
- attr:
    location: .email
    name: value
    ends: .88@gmail.com
```

#### Matches

Wait until the `value` attribute of the WebElement matches `[a-z\\.0-9@]+` pattern

```yaml
- attr:
    location: .email
    name: value
    match: [a-z\\.0-9@]+
```

#### Mixed

It is possible to mix `contains` `starts` `ends` `matches` properties to wait until
the given attribute of the located WebElement contains, starts, ends and matches the pattern
at the same time

{{% note %}}
If `is` condition is given all other conditions will be ignored.
{{% /note %}}

```yaml
- attr:
    location: .email
    name: value
    starts: some-emai
    ends: l@gmail.com
    contains: e-email@gmail
    match: [a-z\\.0-9@]+
```

## Count Usage

Wait until the count of the located WebElements satisfying the attribute condition(s) is equal to the expected number

```yaml
- attr:
    location: .menu .menu-item
    name: class
    ends: current
    count: 4
```

or less then expected number

```yaml
- attr:
    location: .menu .menu-item
    name: class
    is: menu-item
    count:
      more: 2
```

or more!

```yaml
- attr:
    location: .menu .menu-item
    name: class
    is: menu-item
    count:
      less: 5
```

## Timeout Usage

`timeout` refers to the amount of time to wait until the given condition(s) gets satisfied otherwise scenario will fail with a error. If `timeout` property has not been set the default timeout will be used.

```yaml
- attr:
    location: .email
    name: value
    is: some-email@gmail.com
    timeout: 20s
```
