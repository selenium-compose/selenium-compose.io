---
title: Maximize
---

Find a window using its title, url or index and maximize. All comparision are made in case-sensitive manner for title and case-insensitive for url.

Only one window can be maximized at a time, thus, if multiple windows are matched to the provided conditions the test will fail, therefore, try to be more precise in the conditions to target the right window to maximize.

You can also mix title and url conditions.
## Key

Maximize goes under `maximize` key.

## Properties

Name|Description|Type|Required
---|---|---|---
title|Find window with the provided title condition|object|`false`
url|Find window with the provided url condition|object|`false`
index|Find window by index.|int|`false`

## Usage

### Title

Find window using its title to maximize. All comparisons are made in case sensitive manner.
#### Inline

Maximize window whose title contains the provided string (case sensitive).
```yaml
- maximize:
    title: selenium compose
```

#### Mapping

##### Is

Maximize window whose title is equal to the provided string.
```yaml
- maximize:
    title:
      is: selenium compose is awesome! | $title_is
```

##### Contains

Maximize window whose title contains provided string.
```yaml
- maximize:
    title:
      contains: selenium compose | $title_contains
```

##### Starts

Maximize window whose title starts with the provided string.
```yaml
- maximize:
    title:
      starts: selenium | $title_starts
```

##### Ends

Maximize window whose title ends with the provided string.
```yaml
- maximize:
    title:
      ends: awesome! | $title_ends
```

##### Matches

Maximize window whose title matches the provided string.
```yaml
- maximize:
    title:
      ends: awesome! | $title_matches
```

### Url

Find window using its url to maximize. All comparisons are made in case insensitive manner.
#### Inline

Maximize window whose url contains the provided string (case sensitive).
```yaml
- maximize:
    url: https://selenium-compose.io
```

#### Mapping

##### Is

Maximize window whose url is equal to the provided string.
```yaml
- maximize:
    url:
      is: https://selenium-compose.io | $url_is
```

##### Contains

Maximize window whose url contains provided string.
```yaml
- maximize:
    url:
      contains: selenium-compose | $url_contains
```

##### Starts

Maximize window whose url starts with the provided string.
```yaml
- maximize:
    url:
      starts: https://selenium | $url_starts
```

##### Ends

Maximize window whose url ends with the provided string.
```yaml
- maximize:
    url:
      ends: compose.io | $url_ends
```

##### Matches

Maximize window whose url matches the provided string.
```yaml
- maximize:
    url:
      matches: "https?:\/\/(www\.)?[-a-zA-Z0-9@:%!!(MISSING)!(MISSING)_(MISSING)\+~#=]{2,256}\.[a-z]{2,6}\b([-a-zA-Z0-9@:%!!(MISSING)!(MISSING)_(MISSING)\+.~#?&//=]*)" | $url_matches
```

### Index

`window` index starts counting from 0 which is the main `window`. Each next opened `window`'s index increase by 1.
If you are unsure about `window` index, please use use `url` and `title` conditions.
If index specified all other conditions are being ignored.
```yaml
- maximize: 3 | $window_index
```

### Mixed

You can mix url and title conditions.
```yaml
- maximize:
    title:
      contains: selenium compose | $title_contains
    url:
      starts: https://selenium | $url_contains
```
