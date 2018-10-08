---
title: Conditions
linktitle: Conditions
description: A `condition` is a storage with an associated name and a set of `expectation`s
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

To create reusable [expectation](/expectation/overview) set which can be used in different scenarios or multiple times within a single scenario you can use `condition` storage to define a set of [expectation](/expectation/overview).

A `condition` defined in the global scope is available for all scenarios, locally defined storage is available only within the scenario is has been defined.

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

Pre-defined `condition` storage is used inside `wait` statement, which will wait until
all expectations are satisfied

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
      click: .popup .close
      click: .signin
      wait: singin_popup
```

## Timeout

To limit each expectation waiting time you can set `timeout` which will apply to a single expectation in the storage

```yaml
scenarios:
  guest_actions:
    actions:
      click: .create_post
      wait:
        ref: singin_popup
        timeout: 200ms
```

thus, each expectation waiting time will be limited to 200ms. This will override any `timeout` for any `expectation` set previously.
