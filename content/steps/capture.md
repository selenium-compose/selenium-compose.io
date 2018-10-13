---
title: Capture
description: Capture a screenshot of the browser window
categories: [steps]
keywords: [steps,capture]
menu:
  docs:
    parent: "steps"
    weight: 2
draft: false
toc: true    
---

## Properties

Name|Description|Type|Required
---|---|---|---
name|Screenshot name|`string`|`false`
path|Path to save the screen shot|`string`|`false`

## Syntax

`capture` accepts a string or a map of values

### Inline

Use inline syntax to simply capture a screenshot and save it in output dir, which, is configured with `--outdir` flag

```yaml
- capture: <string> | $capture_name
```

### Mapping

Use mapping syntax to save the captured image in a custom path

{{% note %}}
The path should be relative to the current working dir, which is configured with `--cwd` flag, or absolute
{{% /note %}}

```yaml
- capture:
    name: <string> | $name
    path: <string> | $images_path
```

## Basic Usage

```yaml
- capture: registration-step1
```

or

```yaml
- capture:
    name: registration-step1
```

## Custom path

Save in a custom path

```yaml
- capture:
    name: registration-step1
    path: /images
```
