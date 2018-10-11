---
title: Http Requests
linktitle: Http Requests
description: A `http` is an http request storage with an associated name
date: 2017-02-01
publishdate: 2017-02-01
lastmod: 2017-02-01
categories: [scenario]
keywords: [http,import,scenario]
menu:
  docs:
    parent: "scenario"
    weight: 4
weight: 0001
draft: false
toc: true
---

## Declaration

`https` declaration syntax

```yaml
https:
  clear_users:
    url: https://selenium-compose.io/clear-all
    method: DELETE
    headers:
      - Authorization: authtoken
      - Content-Type: json
```

## Usage

Pre-defined http request is used with `http` statement

```yaml
https:
  clear_users:
    url: https://selenium-compose.io/clear-all
    method: DELETE
    headers:
      - Authorization: authtoken
      - Content-Type: json

scenarios:
  my_scenario:
    - http: clear_users
    - open: https://selenium-compose.io
    - wait:
        visibility: .singin_btn
```
a
