---
title: Maximize
description: Lookup for a browser and maximize it
categories: [steps]
authors: ["Aram Petrosyan"]
keywords: [steps,maximize]
menu:
  docs:
    parent: "steps"
    weight: 8
draft: false
toc: true
---

`maximize` waits until a browser has been matched to maximize it. All comparisons are case-sensitive for `title` and case-insensitive for `url`.

{{% note %}}
Only one window can be maximized at a time, thus, if multiple windows are matched to the provided conditions the scenario will fail, therefore, be more precise in the conditions to target the right window to maximize
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
- maximize:
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

## Maximize by Title lookup

Find window using its `title` to maximize. All comparisons are case-sensitive

#### Inline

Maximize window whose `title` contains the expected string

```yaml
- maximize:
    title: selenium compose
```

#### Is

Maximize window whose `title` is equal to the expected string

```yaml
- maximize:
    title:
      is: selenium compose is awesome! | $title_is
```

#### Contains

Maximize window whose `title` contains expected string

```yaml
- maximize:
    title:
      contains: selenium compose | $title_contains
```

#### Starts

Maximize window whose `title` starts with the expected string

```yaml
- maximize:
    title:
      starts: selenium | $title_starts
```

#### Ends

Maximize window whose `title` ends with the expected string

```yaml
- maximize:
    title:
      ends: awesome! | $title_ends
```

#### Matches

Maximize window whose `title` matches the expected string

```yaml
- maximize:
    title:
      ends: awesome! | $title_matches
```

## Maximize by URL lookup

Find window using its `url` to Maximize. All comparisons are case-insensitive.

#### Inline

Maximize window whose `url` contains the expected string

```yaml
- maximize:
    url: selenium-compose.io
```

#### Is

Maximize window whose `url` is equal to the provided string.
```yaml
- maximize:
    url:
      is: https://selenium-compose.io/
```

#### Contains

Maximize window whose `url` contains expected string

```yaml
- maximize:
    url:
      contains: selenium-compose | $url_contains
```

#### Starts

Maximize window whose `url` starts with the expected string

```yaml
- maximize:
    url:
      starts: https://selenium | $url_starts
```

#### Ends

Maximize window whose `url` ends with the expected string

```yaml
- maximize:
    url:
      ends: compose.io | $url_ends
```

#### Matches

Maximize window whose url matches the expected string

```yaml
- maximize:
    url:
      matches: "https?:\/\/(www\.)?[-a-zA-Z0-9@:%!!(MISSING)!(MISSING)_(MISSING)\+~#=]{2,256}\.[a-z]{2,6}\b([-a-zA-Z0-9@:%!!(MISSING)!(MISSING)_(MISSING)\+.~#?&//=]*)" | $url_matches
```

### Index

Browser `index` starts counting from 0 which is the main browser. Each next opened `browser`'s index increase by 1.
If you are unsure about window `index`, please use use `url` and `title` conditions.

```yaml
- maximize: 3
```

## Title and URL mixed

You can mix url and title conditions

```yaml
- maximize:
    title:
      contains: selenium compose | $title_contains
    url:
      starts: https://selenium | $url_contains
```
