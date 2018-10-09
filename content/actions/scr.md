---
title: Screen Shot
description: Capture a screenshot of the browser window
categories: [actions]
authors: ["Aram Petrosyan"]
keywords: [action,resize]
menu:
  docs:
    parent: "actions"
    weight: 13
draft: false
toc: true    
---

## Properties

Name|Description|Type|Required
---|---|---|---
name|Screenshot name|`string`|`false`
path|Path to save the screen shot|`string`|`false`

## Syntax

`scr` accepts a string or a map of values

### Inline

Use inline syntax to simply capture a screenshot and save it in output dir, which, is configured with `--outdir` flag

```yaml
- scr: <string> | $capture_name
```

### Mapping

Use mapping syntax to save the captured image in a custom path

{{% note %}}
The path should be relative to the current working dir, which is configured with `--cwd` flag, or absolute
{{% /note %}}

```yaml
- scr:
    name: <string> | $name
    path: <string> | $images_path
```

## Basic Usage

```yaml
- scr: registration-step1
```

or

```yaml
- scr:
    name: registration-step1
```

or with custom path!

```yaml
- scr:
    name: registration-step1
    path: /images
```
