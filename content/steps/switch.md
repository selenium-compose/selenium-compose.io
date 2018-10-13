---
title: Switch
description: Lookup for a browser and switch to it
categories: [steps]
keywords: [steps,switch]
menu:
  docs:
    parent: "steps"
    weight: 17
draft: false
toc: true    
---

`switch` waits until a browser has been matched to switch to it. All comparisons are case-sensitive for `title` and case-insensitive for `url`.

{{% note %}}
Only one window can be switched at a time, thus, if multiple windows are matched to the provided conditions the scenario will fail, therefore, be more precise in the conditions to target the right window to switch
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
index|Find window by index. The current browser is at `0` index|int|`false`

## Syntax

You can mix `title` and `url` to match the right browser.

{{% note %}}
`url` and `title` conditions do not have any effect if the lookup is being done by the `index`
{{% /note %}}

```yaml
- switch:
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
```

## Switch by Title lookup

Find window using its `title` to switch to it. All comparisons are case-sensitive

#### Inline

Switch window whose `title` contains the expected string

```yaml
- switch:
    title: selenium compose
```

#### Is

Switch window whose `title` is equal to the expected string

```yaml
- switch:
    title:
      is: selenium compose is awesome! | $title_is
```

#### Contains

Switch window whose `title` contains expected string

```yaml
- switch:
    title:
      contains: selenium compose | $title_contains
```

#### Starts

Switch window whose `title` starts with the expected string

```yaml
- switch:
    title:
      starts: selenium | $title_starts
```

#### Ends

Switch window whose `title` ends with the expected string

```yaml
- switch:
    title:
      ends: awesome! | $title_ends
```

#### Matches

Switch window whose `title` matches the expected string

```yaml
- switch:
    title:
      ends: awesome! | $title_matches
```

## Switch by URL lookup

Find window using its `url` to switch. All comparisons are case-insensitive.

#### Inline

Switch window whose `url` contains the expected string

```yaml
- switch:
    url: selenium-compose.io
```

#### Is

Switch window whose `url` is equal to the provided string.
```yaml
- switch:
    url:
      is: https://selenium-compose.io/
```

#### Contains

Switch window whose `url` contains expected string

```yaml
- switch:
    url:
      contains: selenium-compose | $url_contains
```

#### Starts

Switch window whose `url` starts with the expected string

```yaml
- switch:
    url:
      starts: https://selenium | $url_starts
```

#### Ends

Switch window whose `url` ends with the expected string

```yaml
- switch:
    url:
      ends: compose.io | $url_ends
```

#### Matches

Switch window whose url matches the expected string

```yaml
- switch:
    url:
      matches: "https?:\/\/(www\.)?[-a-zA-Z0-9@:%!!(MISSING)!(MISSING)_(MISSING)\+~#=]{2,256}\.[a-z]{2,6}\b([-a-zA-Z0-9@:%!!(MISSING)!(MISSING)_(MISSING)\+.~#?&//=]*)" | $url_matches
```

### Index

Browser `index` starts counting from 0 which is the main browser. Each next opened `browser`'s index increase by 1.
If you are unsure about window `index`, please use use `url` and `title` conditions.

```yaml
- switch: 3
```

## Title and URL mixed

You can mix url and title conditions

```yaml
- switch:
    title:
      contains: selenium compose | $title_contains
    url:
      starts: https://selenium | $url_contains
```
