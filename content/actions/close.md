---
title: Close
menu:
  docs:
    parent: "actions"
    weight: 20
---

Find a window using its title, url or index and close. All comparision are made in case-sensitive manner for title and case-insensitive for url.

Only one window can be closed at a time, thus, if multiple windows are matched to the provided conditions the test will fail, therefore, try to be more precise in the conditions to target the right window to close.

You can also mix title and url conditions.
## Key

Close goes under `close` key.

## Properties

Name|Description|Type|Required
---|---|---|---
title|Find window with the provided title condition|object|`false`
url|Find window with the provided url condition|object|`false`
index|Find window by index.|int|`false`

## Usage

### Title

Find window using its title to close. All comparisons are made in case sensitive manner.
#### Inline

Close window whose title contains the provided string (case sensitive).
```yaml
- close:
    title: selenium compose
```

#### Mapping

##### Is

Close window whose title is equal to the provided string.
```yaml
- close:
    title:
      is: selenium compose is awesome! | $title_is
```

##### Contains

Close window whose title contains provided string.
```yaml
- close:
    title:
      contains: selenium compose | $title_contains
```

##### Starts

Close window whose title starts with the provided string.
```yaml
- close:
    title:
      starts: selenium | $title_starts
```

##### Ends

Close window whose title ends with the provided string.
```yaml
- close:
    title:
      ends: awesome! | $title_ends
```

##### Matches

Close window whose title matches the provided string.
```yaml
- close:
    title:
      ends: awesome! | $title_matches
```

### Url

Find window using its url to close. All comparisons are made in case insensitive manner.
#### Inline

Close window whose url contains the provided string (case sensitive).
```yaml
- close:
    url: https://selenium-compose.io
```

#### Mapping

##### Is

Close window whose url is equal to the provided string.
```yaml
- close:
    url:
      is: https://selenium-compose.io | $url_is
```

##### Contains

Close window whose url contains provided string.
```yaml
- close:
    url:
      contains: selenium-compose | $url_contains
```

##### Starts

Close window whose url starts with the provided string.
```yaml
- close:
    url:
      starts: https://selenium | $url_starts
```

##### Ends

Close window whose url ends with the provided string.
```yaml
- close:
    url:
      ends: compose.io | $url_ends
```

##### Matches

Close window whose url matches the provided string.
```yaml
- close:
    url:
      matches: "https?:\/\/(www\.)?[-a-zA-Z0-9@:%!!(MISSING)!(MISSING)_(MISSING)\+~#=]{2,256}\.[a-z]{2,6}\b([-a-zA-Z0-9@:%!!(MISSING)!(MISSING)_(MISSING)\+.~#?&//=]*)" | $url_matches
```

### Index

`window` index starts counting from 0 which is the main `window`. Each next opened `window`'s index increase by 1.
If you are unsure about `window` index, please use use `url` and `title` conditions.
If index specified all other conditions are being ignored.
```yaml
close: 3 | $window_index
```

### Mixed

You can mix url and title conditions.
```yaml
- close:
    title:
      contains: selenium compose | $title_contains
    url:
      starts: https://selenium | $url_contains
```
