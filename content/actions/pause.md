---
title: Pause
description: Pauses the current test execution the given amount of time
categories: [actions]
authors: ["Aram Petrosyan"]
keywords: [action,Pause]
menu:
  docs:
    parent: "actions"
    weight: 11
draft: false
toc: true
---

## Syntax

```yaml
- pause: <Duration> | $duration
```

## Milliseconds

Wait 300 milliseconds before executing next action

```yaml
- pause: 300ms
```

## Seconds

Wait 2 seconds before executing next action
```yaml
- pause: 2s
```

## Minutes

Wait 3 minutes before executing next action
```yaml
- pause: 3m
```
