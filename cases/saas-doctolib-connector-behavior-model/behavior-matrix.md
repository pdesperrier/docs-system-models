# Behavior Matrix — Doctolib

## Purpose

This matrix converts scattered documentation elements into an operational decision surface.

It is used to verify whether the documentation lets a reader answer:

- who can act;
- under which condition;
- from which state;
- toward which next state;
- with which visible outcome;
- with which exception path.

## Matrix

| Actor | State / condition | Trigger | Expected documented outcome | Audit finding |
|---|---|---|---|---|
| Practitioner | `not_connected` | connector synchronization and ownership behavior reaches `not_connected` under documented or inferred conditions | Expected behavior must identify trigger, visibility, next action, and exception path | If `not_connected` is only listed, the transition remains under-modeled |
| Organization admin | `connected` | connector synchronization and ownership behavior reaches `connected` under documented or inferred conditions | Expected behavior must identify trigger, visibility, next action, and exception path | If `connected` is only listed, the transition remains under-modeled |
| External medical software | `active` | connector synchronization and ownership behavior reaches `active` under documented or inferred conditions | Expected behavior must identify trigger, visibility, next action, and exception path | If `active` is only listed, the transition remains under-modeled |
| Connector runtime | `sync_pending` | connector synchronization and ownership behavior reaches `sync_pending` under documented or inferred conditions | Expected behavior must identify trigger, visibility, next action, and exception path | If `sync_pending` is only listed, the transition remains under-modeled |
| Patient record | `synced` | connector synchronization and ownership behavior reaches `synced` under documented or inferred conditions | Expected behavior must identify trigger, visibility, next action, and exception path | If `synced` is only listed, the transition remains under-modeled |
| Practitioner | `conflict` | connector synchronization and ownership behavior reaches `conflict` under documented or inferred conditions | Expected behavior must identify trigger, visibility, next action, and exception path | If `conflict` is only listed, the transition remains under-modeled |

## Missing-model indicators

A cell is incomplete when it does not specify:

- actor;
- object;
- action;
- condition;
- state before;
- state after;
- failure path;
- visibility;
- downstream effect.

## Documentation risk

When these cells are not explicit, users can still follow instructions but cannot predict behavior. This increases trial-and-error implementation, support dependency, and inconsistent QA coverage.
