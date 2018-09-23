---
title: Keydown
---

Send a sequence of keystrokes to the active element. Modifiers are not released at the end of each call, thus, make sure you release all modifiers using key_up.
## Usage

```yaml
- key_down: abc | $keys | @ctrl @shift @alt
```
