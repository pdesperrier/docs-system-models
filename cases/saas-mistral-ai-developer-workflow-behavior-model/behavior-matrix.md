# Behavior Matrix — Mistral AI

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
| Developer | `configured` | developer workflow across API keys, files, RAG, tools, limits, and runtime errors reaches `configured` under documented or inferred conditions | Expected behavior must identify trigger, visibility, next action, and exception path | If `configured` is only listed, the transition remains under-modeled |
| Workspace admin | `file_uploaded` | developer workflow across API keys, files, RAG, tools, limits, and runtime errors reaches `file_uploaded` under documented or inferred conditions | Expected behavior must identify trigger, visibility, next action, and exception path | If `file_uploaded` is only listed, the transition remains under-modeled |
| API client | `indexed` | developer workflow across API keys, files, RAG, tools, limits, and runtime errors reaches `indexed` under documented or inferred conditions | Expected behavior must identify trigger, visibility, next action, and exception path | If `indexed` is only listed, the transition remains under-modeled |
| Model endpoint | `ready` | developer workflow across API keys, files, RAG, tools, limits, and runtime errors reaches `ready` under documented or inferred conditions | Expected behavior must identify trigger, visibility, next action, and exception path | If `ready` is only listed, the transition remains under-modeled |
| File/RAG service | `running` | developer workflow across API keys, files, RAG, tools, limits, and runtime errors reaches `running` under documented or inferred conditions | Expected behavior must identify trigger, visibility, next action, and exception path | If `running` is only listed, the transition remains under-modeled |
| Developer | `rate_limited` | developer workflow across API keys, files, RAG, tools, limits, and runtime errors reaches `rate_limited` under documented or inferred conditions | Expected behavior must identify trigger, visibility, next action, and exception path | If `rate_limited` is only listed, the transition remains under-modeled |

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
