---
title: HTTP Request
description: Make an HTTP request
categories: [steps]
keywords: [steps,http]
menu:
  docs:
    parent: "steps"
    weight: 6
draft: false
toc: true    
---

Sometime you may need to do some cleanup or preparations on the server before a `scenario` execution. `http` provides a simple and easy-to-use way to fulfill this task

## Properties

Name|Description|Type|Required
---|---|---|---
url|HTTP Request url|`string`|`true`
method|HTTP Method|`string`|`false`
headers|HTTP Request headers|`map`|`false`
content_type|HTTP Request content type|`string`|`false`
data|HTTP Request data|`any`|`false`

## Syntax

`http` accepts a string or a map of values

### Inline

Use inline syntax to make a `json` `POST` request to the given url

```yaml
- http: <string> | $api_url
```

### Mapping

Use mapping syntax to configure all properties

```yaml
- http:
    url: <string> | $api_url
    method: <string>
    headers: <array>
    content_type: <string> | $content_type
```

## Basic Usage

```yaml
- http: https://app.selenium-compose.io/clear-all
```

or

```yaml
- http:
    url: https://app.selenium-compose.io/user
    method: DELETE
    data:
      id: 12345
```

## Headers Usage

Add necessary headers to the request

```yaml
- http:
    url: https://selenium-compose.io/user
    method: DELETE
    headers:
      Authorization: authtoken
      Content-Type: application/json
    data:
      id: 12345
```

## Content Type

If `content_type` has been set one of `plain` `json` `xml` `form` the respective header will be added automatically
`text/plain` `application/json` `application/xml` `application/x-www-form-urlencoded` and the `data` will be encoded accordingly

```yaml
- http:
    url: https://selenium-compose.io/user
    method: DELETE
    headers:
      Authorization: authtoken
    data:
      id: 12345
```
