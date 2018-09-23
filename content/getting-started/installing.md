---
title: Install Selenium Compose
linktitle: Installation
description: Install Hugo on macOS, Windows, Linux, OpenBSD, FreeBSD, and on any machine where the Go compiler tool chain can run.
categories: [getting started]
authors: ["Aram Petrosyan"]
keywords: [install,pc,windows,linux,macos,binary]
menu:
  docs:
    parent: "getting-started"
    weight: 30
weight: 30
sections_weight: 30
draft: false
toc: true
---

Selenium Compose is written in [Go](https://golang.org/) with support for multiple platforms. The latest release can be found at [Selenium Compose Releases][releases].

Selenium Compose currently provides pre-built binaries for the following:

* macOS (Darwin) for x64, i386, and ARM architectures
* Windows
* Linux

Selenium Compose may also be compiled from source wherever the Go toolchain can run; e.g., on other operating systems such as DragonFly BSD, OpenBSD, Plan&nbsp;9, Solaris, and others. See <https://golang.org/doc/install/source> for the full set of supported combinations of target operating systems and compilation architectures.

## Quick Install

### Binary (Cross-platform)

Download the appropriate version for your platform from [Selenium Compose Releases][releases]. Once downloaded, the binary can be run from anywhere. You don't need to install it into a global location. This works well for shared hosts and other systems where you don't have a privileged account.

Ideally, you should install it somewhere in your `PATH` for easy use. `/usr/local/bin` is the most probable location.

### Npm

If you are using [npm][npm], you can install Selenium Compose with the following one-liner:

```bash
npm i selenium-compose -g
```

### Homebrew (macOS)

Coming soon...

### Source

#### Prerequisite Tools

* [Git][installgit]
* [Go (at least Go 1.11)](https://golang.org/dl/)
* [Setup workspace](gosetup)

#### Fetch from GitHub

Compiling Selenium Compose source is as easy as this one line command

```bash
go get -u github.com/selenium-compose/selenium-compose
```

## Docker


## Next Steps

Now that you've installed Selenium Compose, read the [Quick Start guide][quickstart] and explore the rest of the documentation.

[slack]: https://join.slack.com/t/seleniumcompose/shared_invite/enQtMzYwMzI2MTQ2Njc4LTQ2MDFmMjBhYTllNDdhNjc5NDM3ZGUzNmZiMDZkOGM1NDcxMTdjYWM4OWMxMmRiYThlZWQ1NTVkOGE0NDVkMWY
[npm]: https://npmjs.org/
[gosetup]: https://www.ardanlabs.com/blog/2016/05/installing-go-and-your-workspace.html
[installgit]: http://git-scm.com/
[installgo]: https://golang.org/dl/
[quickstart]: /getting-started/quick-start/
[releases]: https://github.com/selenium-compose/selenium-compose/releases
