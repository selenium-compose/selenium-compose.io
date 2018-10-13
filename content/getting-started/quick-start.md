---
title: Quick start
linktitle: Quick start
description: Let's compose codeless selenium test for Google!
categories: [getting started]
keywords: [quick start, usage]
menu:
  docs:
    parent: "getting-started"
    weight: 25
weight: 25
sections_weight: 25
draft: false
aliases: [/tutorials/installing-on-windows/,/tutorials/installing-on-mac/,/overview/installing/,/getting-started/install,/install/]
toc: true
---

{{% note %}}
  This quick start uses `macOS` and `npm`. For instructions about how to install Selenium Compose on other operating systems, see [install](/getting-started/installing).

  You also need [npm](https://www.npmjs.com/get-npm) to run this tutorial.
{{% /note %}}

## Step 1: Install Selenium Compose

```bash
npm i selenium-compose -g
```

## Step 2: Selenium Standalone

{{% note %}}
  [Selenium server](https://www.seleniumhq.org/) requires [Java](https://www.java.com/en/download/). Please make sure you have it installed before moving forward
{{% /note %}}

```bash
npm i selenium-standalone -g
```

The above will download and setup selenium-standalone server. [Read more](https://www.npmjs.com/package/selenium-standalone)

## Step 3: Run Selenium Server

In order to run tests we need [Selenium server](https://www.seleniumhq.org/) up and running

```bash
selenium-standalone start
```

## Step4: Compose the test

The simplest scenario to test Google

* Open https://google.com
* Assert the page's title starts with "Google"
* Make sure there is a text input on the page
* Type `Smile` and press `enter`
* Wait until the current page's title starts with `smile` ignoring case
* Wait until the current page's url starts with https://www.google.com/search
* Make sure there is a link with text `Images`
* Click on the link!

{{< gist apzuk 5863fe95a07dbad0c9d120bfd674004b >}}

## Step5: Run the test

To see execution log we run the test in `debug` mode

```bash
selenium-compose run google.yml --debug --timeout=20s --state
```

<script src="https://asciinema.org/a/PjF9mQhi8SqmQwUMK4tO1FgcT.js" data-speed=2 data-autoplay="true" data-loop="true" data-rows=25 id="asciicast-PjF9mQhi8SqmQwUMK4tO1FgcT" async></script>
