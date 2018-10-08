---
title: Javascript
description: Execute a javascript code.
categories: [actions]
authors: ["Aram Petrosyan"]
keywords: [action,javascript]
menu:
  docs:
    parent: "actions"
    weight: 6
draft: false
toc: true
---

Javascript execution is only synchronous at this time (to be changed). There are two ways to execute `javascript` code

* Provide a price of code
* Provide a file relative or absolute path with `javascript` code inside

## Properties

Name|Description|Type|Required
---|---|---|---
content|Javascript to execute or `javascript` file path|string|`true`
args|Arguments to the script|array<any>|`false`

## Syntax

`js` accepts a string or a map of values

### Inline

Use inline syntax to execute javascript synchronously without arguments

```yaml
- js: <string> | $js_content | $js_filepath
```

### Mapping

Use mapping syntax to pass arguments to the script

```yaml
- js:
    content: <string> | $js_content | $js_filepath
    args:
      - <any> | $arg1
      - <any> | $arg2
      - <any> | $arg3
      ...
```

## Execute Code Usage

```yaml
- js: "var elem = document.getElementById('bootstrap'); elem.parentNode.removeChild(elem)"
```

## Execute File Usage

If provided string is a valid js file, the content of the file will be executed

```yaml
- js: /tmp/googleanalytics_mocker.js
```

or with arguments

```yaml
- js:
    content: "alert(arguments[0])"
    async: true
    args:
      - "Hello Selenium"

```
