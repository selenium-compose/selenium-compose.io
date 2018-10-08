---
title: Sessions
linktitle: Sessions
description: "`actions` of each scenario are run against a browser aka session. Once a scenario has begun execution a new, default `main` session gets create against which all `step`s are executed"
date: 2017-02-01
publishdate: 2017-02-01
lastmod: 2017-02-01
categories: [scenario]
keywords: [http,import,scenario]
menu:
  docs:
    parent: "scenario"
    weight: 6
weight: 0001
draft: false
toc: true
---

In some cases you may need to create multiple sessions and execute some of `step`s in different session.
Every `step` has `session` property to specify against which session the `step`s should be executed.

```yaml
steps:
  create_new:
    - open: https://admin.selenium-compose.io/news
    - click: .new_news
    - type:
        location: editor
        keys: >
          Lorem Ipsum is simply dummy text of the printing and typesetting industry.
          Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,
          when an unknown printer took a galley of type and scrambled it to make a type
          specimen book. It has survived not only five centuries, but also the leap into
          electronic typesetting, remaining essentially unchanged. It was popularised in
          the 1960s with the release of Letraset sheets containing Lorem Ipsum passages,
          and more recently with desktop publishing software like Aldus PageMaker including
          versions of Lorem Ipsum
    - submit: .form
scenarios:
  publish_news:
    - open:
        url: https://selenium-compose.io/news
        session: main  # by default
    - step:
        ref: create_new
        session: admin # this session will be created during runtime
    - nav: refresh
    - visibility:
        location: .news_list
        count: 10
        session: main  # by default
```
