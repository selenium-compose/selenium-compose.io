---
title: Scope
linktitle: Scope
description: Scope refers to the visibility of `variables` `conditions` `steps` `https`
date: 2017-02-01
publishdate: 2017-02-01
lastmod: 2017-02-01
categories: [scenario]
keywords: [scenario]
menu:
  docs:
    parent: "scenario"
    weight: 5
weight: 0001
draft: false
toc: true
---

## Global

Definitions outside `scenarios` key are considered to be global and accessible for all scenarios

## Local

Each scenario has its own scope or local.
`variables` `steps` `conditions` `https` defined inside the local scope are accessible only within the scope

{{% note %}}
Local definitions override global definitions
{{% /note %}}

## Example

`scenario.yml`

```yaml
# global
variables:
  email: aram.petrosyan.88@gmail.com
  var2: val2
  var3: val3

scenarios:
  account_registration:
    # local  
    variables:
      email: admin@selenium-compose.io  # overrides global variable
      pass: 123456
  account_activation:
    ...
    # global definitions are accessible here
```
