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
name|The attribute name|string|`true`
not_empty|Assert the given attribute is not empty|bool|`false`
is|Assert the given attribute is equal to the expected value|string|`false`
contains|Assert the given attribute contains the expected value|string|`false`
starts|Assert the given attribute starts with the expected value|string|`false`
ends|Assert the given attribute ends with the expected value|string|`false`
matches|Assert the given attribute matches the expected pattern|string|`false`
ignore_case|Perform case-insensitive comparisons if the flag is true|bool|`false`
count|Expected count of WebElements satisfying given condition(s) |[Count](/count)|`false`
timeout|Waiting timeout until the expected condition(s) has been satisfied|[Duration](/duration)|`false`
