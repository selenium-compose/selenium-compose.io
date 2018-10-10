---
title: Open
description: Load a new web page in the current browser window
categories: [steps]
authors: ["Aram Petrosyan"]
keywords: [steps,open]
menu:
  docs:
    parent: "steps"
    weight: 13
draft: false
toc: true
---

This is done using an HTTP GET operation and the method will block until the load is complete.
This will follow redirects issued either by the server or as a meta-redirect from within the returned HTML

## Properties

Name|Description|Type|Required
---|---|---|---
url|Web page url to load|string|`true`
timeout|Wait timeout until the page has been loaded|Duration|`false`

## Syntax

`open` accepts a string or a map of values

### Inline

Use inline syntax to open a webpage and wait the default timeout to load

```yaml
- open: <string> | $url
```

### Mapping

Use mapping syntax to set a custom `timeout`

```yaml
- open:
    url: <string> | $url
    timeout: <Duration> | $timeout
```

## Basic Usage

```yaml
- open: https://selenium-compose.io
```

or with timeout

```yaml
- open:
    url: https://selenium-compose.io
    timeout: 40s
```
