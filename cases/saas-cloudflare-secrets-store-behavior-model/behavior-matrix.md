# Behavior Matrix — Cloudflare

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
| Account admin | `not_created` | Secrets Store lifecycle, bindings, runtime access, and BYOK behavior reaches `not_created` under documented or inferred conditions | Expected behavior must identify trigger, visibility, next action, and exception path | If `not_created` is only listed, the transition remains under-modeled |
| Developer | `created` | Secrets Store lifecycle, bindings, runtime access, and BYOK behavior reaches `created` under documented or inferred conditions | Expected behavior must identify trigger, visibility, next action, and exception path | If `created` is only listed, the transition remains under-modeled |
| API token | `bound` | Secrets Store lifecycle, bindings, runtime access, and BYOK behavior reaches `bound` under documented or inferred conditions | Expected behavior must identify trigger, visibility, next action, and exception path | If `bound` is only listed, the transition remains under-modeled |
| Worker runtime | `available_at_runtime` | Secrets Store lifecycle, bindings, runtime access, and BYOK behavior reaches `available_at_runtime` under documented or inferred conditions | Expected behavior must identify trigger, visibility, next action, and exception path | If `available_at_runtime` is only listed, the transition remains under-modeled |
| AI Gateway | `rotated` | Secrets Store lifecycle, bindings, runtime access, and BYOK behavior reaches `rotated` under documented or inferred conditions | Expected behavior must identify trigger, visibility, next action, and exception path | If `rotated` is only listed, the transition remains under-modeled |
| Account admin | `deleted` | Secrets Store lifecycle, bindings, runtime access, and BYOK behavior reaches `deleted` under documented or inferred conditions | Expected behavior must identify trigger, visibility, next action, and exception path | If `deleted` is only listed, the transition remains under-modeled |

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
