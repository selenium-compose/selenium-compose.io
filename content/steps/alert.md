---
title: Alert
description: Accept or decline the current alert
categories: [steps]
authors: [Aram Petrosyan]
keywords: [steps,alert]
menu:
  docs:
    parent: "steps"
    weight: 1
draft: false
toc: true    
---

Before accepting or declining `alert` waits until an alert popup has appeared on the current page.
If one has not appeared after the `timeout` has exceeded the scenario will fail.

## Properties

Name|Description|Type|Required
---|---|---|---
accept|Flag specifying whether accept or decline the current alert|`bool`|`false`
timeout|Waiting timeout until an alert has appeared on the current page|`Duration`|`false`

## Syntax

`alert` accepts a string or a map of values.

### Inline

Use inline syntax to accept or decline the current alert waiting the default `timeout` until the alert has appeared

```yaml
- alert: <bool>
```

### Mapping

Use mapping syntax to configure the `timeout`

```yaml
- alert:
    accept: <bool>
    timeout: <Duration>
```

## Basic Usage

Accept the current alert

```yaml
- alert: true
```

Decline the current alert

```yaml
- alert: false
```

Change the waiting `timeout`

```yaml
- alert:
    accept: true
    timeout: 15s
```
