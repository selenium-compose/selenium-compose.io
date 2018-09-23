---
title: Javascript
menu:
  docs:
    parent: "actions"
    weight: 30
---

Execute a javascript.
## Key

Javascript goes under `javascript` key.

## Properties

Name|Description|Type|Required
---|---|---|---
content|Javascript to execute or js file path|string|`true`
args|Arguments to the script|array<any>|`false`

## Usage

### Inline

Use inline syntax execute javascript synchronously without arguments.
#### Code

```yaml
- js: "var elem = document.getElementById('bootstrap'); elem.parentNode.removeChild(elem)" | $js_content
```

#### File

If provided string is a valid js file, the content of the file will be executed.
```yaml
- js: /tmp/googleanalytics_mocker.js | $js_filepath
```

### Mapping

Use mapping syntax to configure all Javascript available options.
If `content` is a valid js file path, the content of the file will be executed.
```yaml
- js:
    content: "alert(arguments[0])" | /tmp/alert.js | $js_content
    async: true
    args:
      - "1234"

```
