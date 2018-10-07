---
title: Conditions
linktitle: Conditions
description: A `condition` is a set of `expectation`s with an associated name
authors: ["Aram Petrosyan"]
categories: [scenario]
keywords: [scenario,import,condition]
menu:
  docs:
    parent: "scenario"
    weight: 2
weight: 0001
draft: false
toc: true
---

## Declaration

`conditions` declaration syntax

```yaml
conditions:
  singin_popup:
    - visibility: .popup
    - element:
        location: .close
        clickable: true
    - visibility: .signup_btn  
    - visibility:
        location: .social_auth_btn
        count: 3  
```

## Usage

Pre-defined condition is used inside `wait` statement, which will wait until
all conditions are satisfied

```yaml

conditions:
  singin_popup:
    - visibility: .popup
    - element:
        location: .close
        clickable: true
    - visibility: .signup_btn  
    - visibility:
        location: .social_auth_btn
        count: 3

scenarios:
  guest_actions:
    actions:
      click: .create_post
      wait: singin_popup
```
