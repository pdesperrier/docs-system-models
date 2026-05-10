# Before / After Documentation Architecture — Document360

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

- workspace, OpenAPI import, Try It, access settings, and publication state are separate decision layers
- reader-facing behavior depends on editor and access configuration
- import failure and publication failure need a lifecycle view

## Target pattern

The target structure is behavior-oriented.

- Behavior page: API workspace and content publication lifecycle
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
