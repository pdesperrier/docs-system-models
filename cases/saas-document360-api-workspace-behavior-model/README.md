# Document360 — API Workspace and Content Lifecycle Behavior Model

## Case type

Documentation architecture and behavioral modeling case study.

## Domain

SaaS / knowledge base platform

## Client / product surface

Document360

## Audited object

API workspace and content publication lifecycle

## Core friction

- workspace, OpenAPI import, Try It, access settings, and publication state are separate decision layers
- reader-facing behavior depends on editor and access configuration
- import failure and publication failure need a lifecycle view

## Behavioral dependency model

```text
workspace + content type + editor state + access setting + import method -> allowed action -> state transition -> observable outcome -> next action
```

## Why this case matters

The documentation may explain individual elements clearly, but the operational behavior appears only when several conditions are combined. The user has to reconstruct the model across concepts, role rules, lifecycle states, exceptions, and environment-specific behavior.

This is not only a writing problem. It is a documentation architecture problem.

## Main actors

- Technical writer
- Workspace admin
- API consumer
- Reviewer
- Reader

## Main lifecycle states

- draft
- imported
- validated
- published
- restricted
- deprecated
- archived
- failed_import

## Analysis outputs

| File | Purpose |
|---|---|
| [behavior-matrix.md](behavior-matrix.md) | Maps conditions, roles, states, outcomes, and documentation gaps. |
| [state-model.md](state-model.md) | Makes lifecycle states and transitions explicit. |
| [sequence-diagram.md](sequence-diagram.md) | Shows runtime or operational sequence across actors. |
| [before-after.md](before-after.md) | Compares current topic structure with behavior-oriented architecture. |
| [concept-map.md](concept-map.md) | Maps core concepts and dependencies. |
| [annotated-frictions.md](annotated-frictions.md) | Lists observable documentation frictions and their operational impact. |
| [openapi-findings.md](openapi-findings.md) | Captures API/schema validation opportunities where applicable. |
| [recommendations.md](recommendations.md) | Converts findings into concrete documentation actions. |

## Recommended transformation

- Create an API workspace lifecycle model.
- Map editor state to reader/developer behavior.
- Add import validation and access-state matrices.

## Outcome

The target outcome is not more documentation. The target outcome is less reconstruction.

A reader should be able to predict:

- which actor can perform the action;
- which state the object enters;
- which exception path applies;
- which downstream effect occurs;
- which page explains the behavior;
- which evidence supports the rule.
