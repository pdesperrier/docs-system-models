# Behavior Matrix — Atlassian

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
| App developer | `created` | extension runtime behavior across targets and environments reaches `created` under documented or inferred conditions | Expected behavior must identify trigger, visibility, next action, and exception path | If `created` is only listed, the transition remains under-modeled |
| Workspace admin | `configured` | extension runtime behavior across targets and environments reaches `configured` under documented or inferred conditions | Expected behavior must identify trigger, visibility, next action, and exception path | If `configured` is only listed, the transition remains under-modeled |
| End user | `deployed` | extension runtime behavior across targets and environments reaches `deployed` under documented or inferred conditions | Expected behavior must identify trigger, visibility, next action, and exception path | If `deployed` is only listed, the transition remains under-modeled |
| Runtime host | `installed` | extension runtime behavior across targets and environments reaches `installed` under documented or inferred conditions | Expected behavior must identify trigger, visibility, next action, and exception path | If `installed` is only listed, the transition remains under-modeled |
| Extension service | `available` | extension runtime behavior across targets and environments reaches `available` under documented or inferred conditions | Expected behavior must identify trigger, visibility, next action, and exception path | If `available` is only listed, the transition remains under-modeled |
| App developer | `partially_available` | extension runtime behavior across targets and environments reaches `partially_available` under documented or inferred conditions | Expected behavior must identify trigger, visibility, next action, and exception path | If `partially_available` is only listed, the transition remains under-modeled |

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
