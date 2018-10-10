---
title: Key Press & Release
description: "`press` sends a sequence of keystrokes to the active element, `release` indicates that a previous keystroke sent by `press` should be released"
categories: [steps]
authors: ["Aram Petrosyan"]
keywords: [steps,key up, key down]
menu:
  docs:
    parent: "steps"
    weight: 8
draft: false
toc: true    
---

## Syntax

```yaml
  - press: <string>
```

```yaml
  - release: <string>
```

## Usage

```yaml
  - press: @ctrl a
  - release: @ctrl a
```

## Special Keys

The list of special keys to use

Name|Description
---|---
@cancel|Cancel Key
@help|Help Key
@backspace|Backspace Key
@tab|Tab Key
@clear|Clear Key
@return|Return Key
@enter|Enter Key
@shift|Shift Key
@control|Control Key
@ctrl|Control Key
@ctl|Control Key
@alt|Alt Key
@pause|Pause Key
@escape|Escape Key
@space|Space Key
@pageup|PageUp Key
@pagedown|selenium.PageDown Key
@end|End Key
@home|Home Key
@left|LeftArrow Key
@up|UpArrow Key
@right|RightArrow Key
@down|DownArrow Key
@insert|Insert Key
@delete|Delete Key
@semicolon|selenium.Semicolon Key
@equals|Equals Key
@num0|Numpad 0 Key
@num1|Numpad 1 Key
@num2|Numpad 2 Key
@num3|Numpad 3 Key
@num4|Numpad 4 Key
@num5|Numpad 5 Key
@num6|Numpad 6 Key
@num7|Numpad 7 Key
@num8|Numpad 8 Key
@num9|Numpad 9 Key
@multiply|selenium.Multiply Key
@add|Add Key
@separator|selenium.Separator Key
@sep|Separator Key
@sub|Substract Key
@decimal|Decimal Key
@dec|Decimal Key
@divide|Divide Key
@div|Divide Key
@f1|F1 Key
@f2|F2 Key
@f3|F3 Key
@f4|F4 Key
@f5|F5 Key
@f6|F6 Key
@f7|F7 Key
@f8|F8 Key
@f9|F9 Key
@f10|F10 Key
@f11|F11 Key
@f12|F12 Key
@meta|Meta Key
