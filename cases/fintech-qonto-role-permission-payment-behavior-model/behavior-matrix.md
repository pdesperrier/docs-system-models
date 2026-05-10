# Behavior Matrix — Qonto

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
| Owner | `not_started` | role-dependent payment permission workflow reaches `not_started` under documented or inferred conditions | Expected behavior must identify trigger, visibility, next action, and exception path | If `not_started` is only listed, the transition remains under-modeled |
| Admin | `eligible` | role-dependent payment permission workflow reaches `eligible` under documented or inferred conditions | Expected behavior must identify trigger, visibility, next action, and exception path | If `eligible` is only listed, the transition remains under-modeled |
| Finance role | `requires_sca` | role-dependent payment permission workflow reaches `requires_sca` under documented or inferred conditions | Expected behavior must identify trigger, visibility, next action, and exception path | If `requires_sca` is only listed, the transition remains under-modeled |
| Member | `requires_approval` | role-dependent payment permission workflow reaches `requires_approval` under documented or inferred conditions | Expected behavior must identify trigger, visibility, next action, and exception path | If `requires_approval` is only listed, the transition remains under-modeled |
| Approver | `approved` | role-dependent payment permission workflow reaches `approved` under documented or inferred conditions | Expected behavior must identify trigger, visibility, next action, and exception path | If `approved` is only listed, the transition remains under-modeled |
| API client | `submitted` | role-dependent payment permission workflow reaches `submitted` under documented or inferred conditions | Expected behavior must identify trigger, visibility, next action, and exception path | If `submitted` is only listed, the transition remains under-modeled |

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
