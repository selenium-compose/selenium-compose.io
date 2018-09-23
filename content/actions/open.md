---
title: Open Documentation
---

Load a new web page in the current browser window. This is done using an HTTP GET operation,
and the method will block until the load is complete.

This will follow redirects issued either by the server or as a meta-redirect from within the returned HTML.
## Key

Open goes under `open` key.

## Properties

Name|Description|Type|Required
---|---|---|---
url|Web page url to load|string|`false`
timeout|Wait timeout until the page has been loaded.|Duration|`false`

## Usage

### Inline

Open requested url and wait the default timeout to load the web page. When the timeout exceeded and the web page has not been loaded yet the test execution terminated with failure.
```yaml
- open: https://selenium-compose.io | $url
```

### Mapping

Open requested url and wait the specified timeout to load the web page. When the timeout exceeded and the web page has not been loaded yet the test execution terminated with failure.
```yaml
- open:
    url: https://selenium-compose.io | $domain
    timeout: 200ms | $timeout
```
