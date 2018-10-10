---
title: Steps
linktitle: Steps
description: A `step` is a set of `action`s with an associated name
date: 2017-02-01
publishdate: 2017-02-01
lastmod: 2017-02-01
categories: [scenario]
keywords: [scenario,action]
menu:
  docs:
    parent: "scenario"
    weight: 2
weight: 0001
draft: false
toc: true
---

## Declaration

`steps` declaration syntax

``` yaml
conditions:
  singin_popup:
    - visibility: .popup
    - element:
        location: .close
        clickable: true
    - visibility: .singin_btn  
    - visibility: .signup_btn  
    - visibility:
        location: .social_auth_btn
        count: 3

steps:
  guest_action:
    - click: .create_post
    - wait: singin_popup
    - click: .popup .close
```

## Usage

Pre-defined step is used inside `actions` statement, which executes the steps

```yaml
conditions:
  singin_popup:
    - visibility: .popup
    - element:
        location: .close
        clickable: true
    - visibility: .singin_btn  
    - visibility: .signup_btn  
    - visibility:
        location: .social_auth_btn
        count: 3

steps:
  guest_action:
    - click: .create_post
    - wait: singin_popup
    - click: .popup .close

scenarios:
  guest_singin_create_post:
    actions:
      - step: guest_action
```
