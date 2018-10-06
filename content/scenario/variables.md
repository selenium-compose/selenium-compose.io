---
title: Variables
linktitle: Variables
description: A `variable` is a storage, with a specific type and an associated name
date: 2017-02-01
publishdate: 2017-02-01
lastmod: 2017-02-01
categories: [scenario]
keywords: [usage,docs]
menu:
  docs:
    parent: "scenario"
    weight: 1
weight: 0001
draft: false
toc: true
---

## Naming

Names must start with a letter and may contain letters, numbers or the _ (underscore) symbol. Pick names which clearly describe the variable's purpose

## Declaration

`variables` declaration syntax

``` yaml
variables:
  name: Selenium Compose
  host: https://selenium-compose.io
```

## Usage

Variables are represented by a dollar sign followed by the name of the variable. The variable name is case-sensitive

``` yaml
variables:
  forename: John
  family_name: Smith
  fullName: $forename, $family_name
```
