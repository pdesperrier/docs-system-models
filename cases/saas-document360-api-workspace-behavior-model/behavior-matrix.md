# Behavior Matrix — Document360

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
| Technical writer | `draft` | API workspace and content publication lifecycle reaches `draft` under documented or inferred conditions | Expected behavior must identify trigger, visibility, next action, and exception path | If `draft` is only listed, the transition remains under-modeled |
| Workspace admin | `imported` | API workspace and content publication lifecycle reaches `imported` under documented or inferred conditions | Expected behavior must identify trigger, visibility, next action, and exception path | If `imported` is only listed, the transition remains under-modeled |
| API consumer | `validated` | API workspace and content publication lifecycle reaches `validated` under documented or inferred conditions | Expected behavior must identify trigger, visibility, next action, and exception path | If `validated` is only listed, the transition remains under-modeled |
| Reviewer | `published` | API workspace and content publication lifecycle reaches `published` under documented or inferred conditions | Expected behavior must identify trigger, visibility, next action, and exception path | If `published` is only listed, the transition remains under-modeled |
| Reader | `restricted` | API workspace and content publication lifecycle reaches `restricted` under documented or inferred conditions | Expected behavior must identify trigger, visibility, next action, and exception path | If `restricted` is only listed, the transition remains under-modeled |
| Technical writer | `deprecated` | API workspace and content publication lifecycle reaches `deprecated` under documented or inferred conditions | Expected behavior must identify trigger, visibility, next action, and exception path | If `deprecated` is only listed, the transition remains under-modeled |

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
