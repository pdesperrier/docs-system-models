# Behavior Matrix — PaymentBehaviorModel

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
| Finance user | `draft` | payment validation and approval workflow reaches `draft` under documented or inferred conditions | Expected behavior must identify trigger, visibility, next action, and exception path | If `draft` is only listed, the transition remains under-modeled |
| Admin | `created` | payment validation and approval workflow reaches `created` under documented or inferred conditions | Expected behavior must identify trigger, visibility, next action, and exception path | If `created` is only listed, the transition remains under-modeled |
| Viewer | `requires_approval` | payment validation and approval workflow reaches `requires_approval` under documented or inferred conditions | Expected behavior must identify trigger, visibility, next action, and exception path | If `requires_approval` is only listed, the transition remains under-modeled |
| API client | `approved` | payment validation and approval workflow reaches `approved` under documented or inferred conditions | Expected behavior must identify trigger, visibility, next action, and exception path | If `approved` is only listed, the transition remains under-modeled |
| Webhook consumer | `processing` | payment validation and approval workflow reaches `processing` under documented or inferred conditions | Expected behavior must identify trigger, visibility, next action, and exception path | If `processing` is only listed, the transition remains under-modeled |
| Finance user | `succeeded` | payment validation and approval workflow reaches `succeeded` under documented or inferred conditions | Expected behavior must identify trigger, visibility, next action, and exception path | If `succeeded` is only listed, the transition remains under-modeled |

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
