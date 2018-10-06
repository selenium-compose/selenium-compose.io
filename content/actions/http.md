---
title: HTTP Request
description: Make  HTTP requests
categories: [actions]
authors: ["Aram Petrosyan"]
keywords: [action,http]
menu:
  docs:
    parent: "actions"
    weight: 5
draft: false
toc: true    
---

## Properties

Name|Description|Type|Required
---|---|---|---
url|HTTP Request url|string|`true`
method|HTTP Method|string|`false`
headers|HTTP Request headers|object|`false`
content_type|HTTP Request content type|string|`false`
data|HTTP Request data|any|`false`

## Usage
### Sample

```yaml
- http:
    url: https://selenium-compose.io/clear-all | $host/clear
    method: GET | POST | PUT | DELETE | PATCH | OPTIONS
    headers:
      = Authorization: authtoken
      - Content-Length: 1234
    data:
      id: 12345

```

### Header

If header Content-Type is one of json, xml, form or plain it will be replaced by the proper header.
```yaml
- http:
    url: https://selenium-compose.io/clear-all | $host/clear
    method: GET | POST | PUT | DELETE | PATCH | OPTIONS
    headers:
      - Content-Type: json | xml | form | plain
    data:
      id: 12345

```
