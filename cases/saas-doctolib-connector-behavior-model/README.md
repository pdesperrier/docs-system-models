# Doctolib — Connector Synchronization Behavior Model

## Case type

Documentation architecture and behavioral modeling case study.

## Domain

SaaS / healthcare operations

## Client / product surface

Doctolib

## Audited object

connector synchronization and ownership behavior

## Core friction

- synchronization behavior depends on ownership, identifiers, connector state, and direction
- duplicate handling is difficult to reason about without a combined model
- troubleshooting starts after the user has already inferred too much

## Behavioral dependency model

```text
connector type + synchronization direction + ownership authority + external identifier + runtime activation -> allowed action -> state transition -> observable outcome -> next action
```

## Why this case matters

The documentation may explain individual elements clearly, but the operational behavior appears only when several conditions are combined. The user has to reconstruct the model across concepts, role rules, lifecycle states, exceptions, and environment-specific behavior.

This is not only a writing problem. It is a documentation architecture problem.

## Main actors

- Practitioner
- Organization admin
- External medical software
- Connector runtime
- Patient record

## Main lifecycle states

- not_connected
- connected
- active
- sync_pending
- synced
- conflict
- duplicate_detected
- failed

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

- Create a synchronization behavior matrix.
- Model ownership authority and external identifier dependencies.
- Add duplicate-resolution and conflict-state diagrams.

## Outcome

The target outcome is not more documentation. The target outcome is less reconstruction.

A reader should be able to predict:

- which actor can perform the action;
- which state the object enters;
- which exception path applies;
- which downstream effect occurs;
- which page explains the behavior;
- which evidence supports the rule.
