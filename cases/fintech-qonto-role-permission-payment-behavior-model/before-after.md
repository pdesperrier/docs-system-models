# Before / After Documentation Architecture — Qonto

## Current pattern

The current or typical documentation pattern is topic-oriented.

- Topic page for concept
- Topic page for setup
- Topic page for roles
- Topic page for states
- Topic page for errors
- Topic page for troubleshooting

This helps users find isolated information, but it does not always expose combined behavior.

## Friction created by the current pattern

- payment action depends on role and permission scope, not role name alone
- approval path and authentication path can be confused when documented separately
- visibility of blocked actions is difficult to infer

## Target pattern

The target structure is behavior-oriented.

- Behavior page: role-dependent payment permission workflow
- Decision model: role + condition + state + outcome
- State model: allowed and invalid transitions
- Sequence model: actor -> system -> downstream effect
- Exception model: failure, retry, blocked action, recovery
- Traceability: source page -> rule -> recommendation

## Before / after comparison

| Layer | Before | After |
|---|---|---|
| Concept | Defined in isolation | Linked to lifecycle, role, and dependency |
| Workflow | Split across pages | Rebuilt as one executable path |
| State | Listed as labels | Modeled as transitions with triggers |
| Role | Described as permission text | Mapped to action, object, scope, and visibility |
| Exception | Often placed in troubleshooting | Integrated into the workflow model |
| Dependency | Mentioned near setup | Attached to the specific behavior it changes |

## Success criterion

A user can answer one operational question without reading five disconnected pages.
