---
title: Http Requests
linktitle: Http Requests
description: A `http` is an http request storage with an associated name
date: 2017-02-01
publishdate: 2017-02-01
lastmod: 2017-02-01
categories: [scenario]
keywords: [usage,docs]
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

`http` is passed to `http` step as a string

```yaml
scenarios:
  my_scenario:
    - http: clear_users
    - open: https://selenium-compose.io
    - wait:
        visibility: .singin_btn
```

## Import

It is possible to import `https` from other files. All https under `https` top-level key will be imported.

> all paths are relevant to current working directory, which is, the directory where selenium-compose has been run unless --pwd specified

### Single

```yaml
https:
  import: https/user.yml
```

`https/user.yml`

```yaml
steps:
  clear_users:
    url: https://selenium-compose.io/clear-all
    method: DELETE
    headers:
      - Authorization: authtoken
      - Content-Type: json
```

### Wildcard

```yaml
steps:
  import: https/*.yml
```

## Auto import

If a `https.xml` file exists in the current working directory, it will automatically be imported.
