---
title: Resize
description: Lookup for a browser and resize it
categories: [steps]
keywords: [steps,resize]
menu:
  docs:
    parent: "steps"
    weight: 15
draft: false
toc: true    
---

`resize` waits until a browser has been matched to resize it to the given sizes. All comparisons are case-sensitive for `title` and case-insensitive for `url`.

{{% note %}}
Only one window can be resized at a time, thus, if multiple windows are matched to the provided conditions the scenario will fail, therefore, be more precise in the conditions to target the right window to resize
{{% /note %}}

There are 3 ways to match a browser

* By its `title`
* By its `url`
* By `index`

### title

To match a browser by `title` you can use `is` `contains` `starts` `ends` `matches` assertions described for [Title](/conditions/title)

### url

To match a browser by `url` you can use `is` `contains` `starts` `ends` `matches` assertions described for [Url](/conditions/url)

### index

The main browser has `index` 0, each next opened window's index increases by 1.

## Properties

Name|Description|Type|Required
---|---|---|---
title|Find window with the provided title condition|`map` or `string`|`false`
url|Find window with the provided url condition|`map` or `string`|`false`
index|Find window by index. The current browser is at `0` index|`int`|`false`
width|Window new width|`int`|`true`
height|Window new height|`int`|`true`

## Syntax

You can mix `title` and `url` to match the right browser.

{{% note %}}
`url` and `title` conditions do not have any effect if the lookup is being done by the `index`
{{% /note %}}

```yaml
- resize:
    title:
      is: <string> | $title_is
      contains: <string> | $title_contains
      starts: <string> | $title_starts
      ends: <string> | $title_ends
      matches: <string> | $title_matches
    url:
      is: <string> | $url_is
      contains: <string> | $url_contains
      starts: <string> | $url_starts
      ends: <string> | $url_ends
      matches: <string> | $url_matches
    index: <integer>
    width: <integer>
    height: <integer>
```

## Resize  by Title lookup

Find window using its `title` to resize. All comparisons are case-sensitive

#### Inline

Resize window whose `title` contains the expected string

```yaml
- resize:
    title: selenium compose
    width: 800
    height: 600
```

#### Is

Resize window whose `title` is equal to the expected string

```yaml
- resize:
    title:
      is: selenium compose is awesome! | $title_is
      width: 800
      height: 600
```

#### Contains

Resize window whose `title` contains expected string

```yaml
- resize:
    title:
      contains: selenium compose | $title_contains
      width: 800
      height: 600
```

#### Starts

Resize window whose `title` starts with the expected string

```yaml
- resize:
    title:
      starts: selenium | $title_starts
      width: 800
      height: 600
```

#### Ends

Resize window whose `title` ends with the expected string

```yaml
- resize:
    title:
      ends: awesome! | $title_ends
      width: 800
      height: 600
```

#### Matches

Resize window whose `title` matches the expected string

```yaml
- resize:
    title:
      ends: awesome! | $title_matches
      width: 800
      height: 600
```

## Resize  by URL lookup

Find window using its `url` to resize. All comparisons are case-insensitive.

#### Inline

Resize window whose `url` contains the expected string

```yaml
- resize:
    url: selenium-compose.io
    width: 800
    height: 600
```

#### Is

Resize window whose `url` is equal to the provided string.
```yaml
- resize:
    url:
      is: https://selenium-compose.io/
      width: 800
      height: 600
```

#### Contains

Resize window whose `url` contains expected string

```yaml
- resize:
    url:
      contains: selenium-compose | $url_contains
      width: 800
      height: 600
```

#### Starts

Resize window whose `url` starts with the expected string

```yaml
- resize:
    url:
      starts: https://selenium | $url_starts
      width: 800
      height: 600
```

#### Ends

Resize window whose `url` ends with the expected string

```yaml
- resize:
    url:
      ends: compose.io | $url_ends
      width: 800
      height: 600
```

#### Matches

Resize window whose url matches the expected string

```yaml
- resize:
    url:
      matches: "https?:\/\/(www\.)?[-a-zA-Z0-9@:%!!(MISSING)!(MISSING)_(MISSING)\+~#=]{2,256}\.[a-z]{2,6}\b([-a-zA-Z0-9@:%!!(MISSING)!(MISSING)_(MISSING)\+.~#?&//=]*)" | $url_matches
      width: 800
      height: 600
```

### Index

Browser `index` starts counting from 0 which is the main browser. Each next opened `browser`'s index increase by 1.
If you are unsure about window `index`, please use use `url` and `title` conditions.

```yaml
- resize:
    index: 3
    width: 800
    height: 600
```

## Title and URL mixed

You can mix url and title conditions

```yaml
- resize:
    title:
      contains: selenium compose | $title_contains
    url:
      starts: https://selenium | $url_contains
    width: 800
    height: 600
```
