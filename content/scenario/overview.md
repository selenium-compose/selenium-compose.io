---
title: Overview
linktitle: Overview
description: A scenario is nothing else than a tests case
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

Each `scenario` describes user actions and expected reactions

## Definition

All scenarios are defined inside `scenarios` key with the following scenario `name` and the `scenario` data

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

To keep it easier and not messy you can split scenarios (aka test cases) into separated files and import them into the entry point to run.

Importee structure has to be the same as the importer structure, e.g. the imported file should contain `scenarios` key following with the scenario name and data

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
