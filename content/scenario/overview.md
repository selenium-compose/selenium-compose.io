---
title: Overview
linktitle: Overview
description: A scenario is nothing else than a test case. Each scenario describes a user actions and the expected reaction of the browser.
categories: [scenario]
keywords: [scenario]
menu:
  docs:
    parent: "scenario"
    weight: 1
weight: 0001
draft: false
toc: true
---

All scenarios are defined inside `scenarios` key inside the entry point file with the following scenario `name` and the `scenario` data

Say we have `selenium.yml` which is he entry point of the program


```yaml
scenarios:
  scenario_name_1:
    actions:
      ...

  scenario_name_2:
    actions:
      ...

  scenario_name_3:
    actions:
      ...
```

which will be run

```bash
selenium-compose run selenium.yml
```

Each scenario may also contain local [Variables](/scenario/variables/) [Conditions](/scenario/conditions/) [Steps](/scenario/steps/) [https](/scenario/https/) which are available only within the scenario and override the global definitions


```yaml
scenarios:
  scenario_name_1:
    # Local scoped variables which are
    # available only within `scenario_name_1`
    variables:
      ...
    # Local scoped conditions which are
    # available only within `scenario_name_1`  
    conditions:
      ...
    # Local scoped steps which are
    # available only within `scenario_name_1`    
    steps:
      ...    
    actions:
      ...
```

## Import

To keep it easier and isolated you can split scenarios (aka test cases) into separated files and import them into the entry point to run.
Importee structure has to be the same as the importer, e.g. the imported file should contain `scenarios` key following with the scenario name and data

`selenium.yml`

```yaml
- scenarios:
    import: account.yml
    import: posts.yml
```

`account.yml`

```yaml
- scenarios:
    import: account_*.yml
```

`account_registration.yml`

```yaml
registration:
  actions:
    ...
```

`account_signin.yml`

```
signin:
  actions:
    ...
```

thus, you can isolate each scenario with its local definitions into a single file for better maintainability and readability
