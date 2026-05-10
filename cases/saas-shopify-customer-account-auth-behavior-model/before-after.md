# Before / After Documentation Architecture — Shopify

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

- discovery, PKCE, token exchange, endpoint selection, HTTP status, GraphQL errors, and rate limits are distributed
- HTTP 200 GraphQL errors break a simple status-code mental model
- client type changes required parameters and error paths

## Target pattern

The target structure is behavior-oriented.

- Behavior page: Customer Account API authentication and GraphQL response behavior
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
