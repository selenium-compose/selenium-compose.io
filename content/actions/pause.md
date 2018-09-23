---
title: Pause
---

Pauses the current test execution the given amount of time.
## Usage

Pause takes a valid duration.
### Milliseconds

Wait 300 milliseconds before executing next action.
```yaml
- pause: 300ms
```

### Seconds

Wait 2 seconds before executing next action.
```yaml
- pause: 2s
```

### Minutes

Wait 3 minutes before executing next action.
```yaml
- pause: 3m
```
