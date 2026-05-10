# Behavior Matrix — Shopify

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
| Storefront developer | `discovery_required` | Customer Account API authentication and GraphQL response behavior reaches `discovery_required` under documented or inferred conditions | Expected behavior must identify trigger, visibility, next action, and exception path | If `discovery_required` is only listed, the transition remains under-modeled |
| Customer | `authorization_requested` | Customer Account API authentication and GraphQL response behavior reaches `authorization_requested` under documented or inferred conditions | Expected behavior must identify trigger, visibility, next action, and exception path | If `authorization_requested` is only listed, the transition remains under-modeled |
| Public client | `code_received` | Customer Account API authentication and GraphQL response behavior reaches `code_received` under documented or inferred conditions | Expected behavior must identify trigger, visibility, next action, and exception path | If `code_received` is only listed, the transition remains under-modeled |
| Confidential client | `token_exchanged` | Customer Account API authentication and GraphQL response behavior reaches `token_exchanged` under documented or inferred conditions | Expected behavior must identify trigger, visibility, next action, and exception path | If `token_exchanged` is only listed, the transition remains under-modeled |
| Shopify authorization server | `token_refreshed` | Customer Account API authentication and GraphQL response behavior reaches `token_refreshed` under documented or inferred conditions | Expected behavior must identify trigger, visibility, next action, and exception path | If `token_refreshed` is only listed, the transition remains under-modeled |
| GraphQL API | `authenticated` | Customer Account API authentication and GraphQL response behavior reaches `authenticated` under documented or inferred conditions | Expected behavior must identify trigger, visibility, next action, and exception path | If `authenticated` is only listed, the transition remains under-modeled |

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
