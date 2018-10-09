title: Switch Documentation
---

Find a window using its title, url or index and switch to it. All comparision are made in case sensitive manner for title and case insensitive for url.

Only one window can be switched at a time, thus, if multiple windows are matched to the provided conditions the test will fail, therefore, try to be more precise in the conditions to target the right window to switch. 

You can also mix title and url conditions.
## Key

Switch goes under `switch` key.

## Properties

Name|Description|Type|Required
---|---|---|---
title|Find window with the provided title condition|object|`false`
url|Find window with the provided url condition|object|`false`
index|Find window by index.|int|`false`

## Usage

### Title

Find window using its title to switch. All comparisons are made in case sensitive manner.
#### Inline

Switch window whose title contains the provided string (case sensitive).
```yaml
- switch: 
    title: selenium compose
```

#### Mapping

##### Is

Switch window whose title is equal to the provided string.
```yaml
- switch: 
    title: 
      is: selenium compose is awesome! | $title_is
```

##### Contains

Switch window whose title contains provided string.
```yaml
- switch:
    title: 
      contains: selenium compose | $title_contains
```

##### Starts

Switch window whose title starts with the provided string.
```yaml
- switch:
    title: 
      starts: selenium | $title_starts
```

##### Ends

Switch window whose title ends with the provided string.
```yaml
- switch:
    title: 
      ends: awesome! | $title_ends
```

##### Matches

Switch window whose title matches the provided string.
```yaml
- switch:
    title: 
      ends: awesome! | $title_matches
```

### Url

Find window using its url to switch. All comparisons are made in case insensitive manner.
#### Inline

Switch window whose url contains the provided string (case sensitive).
```yaml
- switch:
    url: https://selenium-compose.io
```

#### Mapping

##### Is

Switch window whose url is equal to the provided string.
```yaml
- switch:
    url: 
      is: https://selenium-compose.io | $url_is
```

##### Contains

Switch window whose url contains provided string.
```yaml
- switch:
    url: 
      contains: selenium-compose | $url_contains
```

##### Starts

Switch window whose url starts with the provided string.
```yaml
- switch:
    url: 
      starts: https://selenium | $url_starts
```

##### Ends

Switch window whose url ends with the provided string.
```yaml
- switch:
    url: 
      ends: compose.io | $url_ends
```

##### Matches

Switch window whose url matches the provided string.
```yaml
- switch:
    url: 
      matches: "https?:\/\/(www\.)?[-a-zA-Z0-9@:%!!(MISSING)!(MISSING)_(MISSING)\+~#=]{2,256}\.[a-z]{2,6}\b([-a-zA-Z0-9@:%!!(MISSING)!(MISSING)_(MISSING)\+.~#?&//=]*)" | $url_matches
```

### Index

`window` index starts counting from 0 which is the main `window`. Each next opened `window`'s index increase by 1.
If you are unsure about `window` index, please use use `url` and `title` conditions.
If index specified all other conditions are being ignored.
```yaml
- switch:3 | $window_index
```

### Mixed

You can mix url and title conditions.
```yaml
- switch:
    title: 
      contains: selenium compose | $title_contains
    url: 
      starts: https://selenium | $url_contains
```
