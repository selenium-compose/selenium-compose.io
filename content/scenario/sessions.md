---
title: Sessions
linktitle: Sessions
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

Each `action` is being run on its session. Once a scenario is being executed a new, default `main` session gets create. By default all `step`s are executed in `main` session.

In some cases you may need to create another session and execute some of `actions` or `steps` in different session.

Every `step` has `session` property to specify against which session the `action` or `step` should be executed. If the session has not been created yet it gets created.

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
