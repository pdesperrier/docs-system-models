# Atlassian — Extension Runtime Behavior Model

## Case type

Documentation architecture and behavioral modeling case study.

## Domain

SaaS / platform extensibility

## Client / product surface

Atlassian

## Audited object

extension runtime behavior across targets and environments

## Core friction

- runtime behavior is distributed across deployment, permissions, rendering constraints, and extension target pages
- successful deployment does not guarantee runtime availability in every target
- permission propagation and rendering constraints are not visible in one model

## Behavioral dependency model

```text
extension target + runtime environment + deployment state + permission scope + authentication context -> allowed action -> state transition -> observable outcome -> next action
```

## Why this case matters

The documentation may explain individual elements clearly, but the operational behavior appears only when several conditions are combined. The user has to reconstruct the model across concepts, role rules, lifecycle states, exceptions, and environment-specific behavior.

This is not only a writing problem. It is a documentation architecture problem.

## Main actors

- App developer
- Workspace admin
- End user
- Runtime host
- Extension service

## Main lifecycle states

- created
- configured
- deployed
- installed
- available
- partially_available
- failed
- disabled

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

- Create a runtime behavior map by extension target.
- Add deployment-to-availability state transitions.
- Centralize rendering constraints and permission prerequisites.

## Outcome

The target outcome is not more documentation. The target outcome is less reconstruction.

A reader should be able to predict:

- which actor can perform the action;
- which state the object enters;
- which exception path applies;
- which downstream effect occurs;
- which page explains the behavior;
- which evidence supports the rule.
