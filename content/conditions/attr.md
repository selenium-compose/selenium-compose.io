---
title: Attribute
description: Assert if the given attribute of an element satisfies the expected condition(s)
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
not_empty|Assert the given attribute is not empty|bool|`false`
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
    location: .element | $element_location
    selector: css | xpath | id | name | tag | class
    name: value | $input_value
    is: some-value | $attr_value
    starts: some-value | $attr_value_starts
    ends: some-value | $attr_value_ends
    contains: some-value | $attr_contains
    matches: pattern | $attr_pattern
    ignore_case: true | false
    count:
      is: 3 | $el_num
      less: 4 | $el_max_num
      more: 1 : $el_min_num
    timeout: 500ms | 10s | 3m | $timeout  
```

See usage cases for each property in details.

## Assertions Usage

By default, each condition expects at least one WebElement satisfying the attribute condition
unless `count` property has explicitly been set. All comparisons are made in case-sensitive manner unless `ignore_case` has been set to `true`

Consider the following snippet

```HTML
<input type="text" class="email" value="" />
```

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

It is possible to mix `contains`, `starts`, `ends`, `matches` properties to wait until
the given attribute of the located WebElement contains, starts, ends and matches the pattern
at the same time

{{% note %}}
If `is` condition is given all other conditions will be ignored.
{{% /note %}}

In out example it looks something like

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

Wait until the count of the located WebElements satisfying the attribute condition(s) is equal, less or more the expected amount

Consider the following snippet

```HTML
<ul class="menu">
  <li class="menu-item">item 1</li>
  <li class="menu-item">item 1</li>
  <li class="menu-item current">item 1</li>
  <li class="menu-item">item 1</li>
</ul>
```

#### Equals

Wait until the count WebElements whose `class` attribute starts with `menu-item` is equal to 4


```yaml
- attr:
    location: .menu .menu-item
    name: class
    ends: current
    count:
      is: 4
```

or just

```yaml
- attr:
    location: .menu .menu-item
    name: class
    ends: current
    count: 4
```

#### Less

Wait until the count of WebElements whose `class` attribute is equal to `menu-item`
is more than 2

```yaml
- attr:
    location: .menu .menu-item
    name: class
    is: menu-item
    count:
      more: 2
```

#### More

Wait until the count of WebElements whose `class` attribute is equal to `menu-item`
is less than 5

```yaml
- attr:
    location: .menu .menu-item
    name: class
    is: menu-item
    count:
      less: 5
```

## Timeout Usage

`timeout` property refers to the amount of time to wait until the given condition(s) gets satisfied otherwise
scenario will fail with according error. If `timeout` property is not set the default timeout will be used.

```yaml
- attr:
    location: .email
    name: value
    is: some-email@gmail.com
    timeout: 20s
```
