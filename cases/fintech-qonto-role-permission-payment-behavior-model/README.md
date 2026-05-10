# Qonto — Role, Permission, and Payment Behavior Model

## Case type

Documentation architecture and behavioral modeling case study.

## Domain

Fintech / business banking

## Client / product surface

Qonto

## Audited object

role-dependent payment permission workflow

## Core friction

- payment action depends on role and permission scope, not role name alone
- approval path and authentication path can be confused when documented separately
- visibility of blocked actions is difficult to infer

## Behavioral dependency model

```text
role + permission scope + authentication state + mandate status + approval rule -> allowed action -> state transition -> observable outcome -> next action
```

## Why this case matters

The documentation may explain individual elements clearly, but the operational behavior appears only when several conditions are combined. The user has to reconstruct the model across concepts, role rules, lifecycle states, exceptions, and environment-specific behavior.

This is not only a writing problem. It is a documentation architecture problem.

## Main actors

- Owner
- Admin
- Finance role
- Member
- Approver
- API client

## Main lifecycle states

- not_started
- eligible
- requires_sca
- requires_approval
- approved
- submitted
- rejected
- blocked

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

- Create a role/action/payment matrix.
- Separate authentication blockers from approval blockers.
- Document visibility for each role at each payment state.

## Outcome

The target outcome is not more documentation. The target outcome is less reconstruction.

A reader should be able to predict:

- which actor can perform the action;
- which state the object enters;
- which exception path applies;
- which downstream effect occurs;
- which page explains the behavior;
- which evidence supports the rule.
