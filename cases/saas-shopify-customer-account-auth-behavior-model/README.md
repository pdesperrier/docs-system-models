# Shopify — Customer Account Authentication Behavior Model

## Case type

Documentation architecture and behavioral modeling case study.

## Domain

SaaS / commerce platform

## Client / product surface

Shopify

## Audited object

Customer Account API authentication and GraphQL response behavior

## Core friction

- discovery, PKCE, token exchange, endpoint selection, HTTP status, GraphQL errors, and rate limits are distributed
- HTTP 200 GraphQL errors break a simple status-code mental model
- client type changes required parameters and error paths

## Behavioral dependency model

```text
client type + discovery endpoint + auth parameters + token exchange + GraphQL response pattern -> allowed action -> state transition -> observable outcome -> next action
```

## Why this case matters

The documentation may explain individual elements clearly, but the operational behavior appears only when several conditions are combined. The user has to reconstruct the model across concepts, role rules, lifecycle states, exceptions, and environment-specific behavior.

This is not only a writing problem. It is a documentation architecture problem.

## Main actors

- Storefront developer
- Customer
- Public client
- Confidential client
- Shopify authorization server
- GraphQL API

## Main lifecycle states

- discovery_required
- authorization_requested
- code_received
- token_exchanged
- token_refreshed
- authenticated
- graphql_error
- rate_limited

## Analysis outputs

| File | Purpose |
|---|---|
| [behavior-matrix.md](behavior-matrix.md) | Maps conditions, roles, states, outcomes, and documentation gaps. |
| [state-model.md](state-model.md) | Makes lifecycle states and transitions explicit. |
| [sequence-diagram.md](sequence-diagram.md) | Shows runtime or operational sequence across actors. |
| [before-after.md](before-after.md) | Compares current topic structure with behavior-oriented architecture. |
| [concept-map.md](concept-map.md) | Maps core concepts and dependencies. |
| [annotated-frictions.md](annotated-frictions.md) | Lists observable documentation frictions and their operational impact. |
| [openapi-findings.md](openapi-findings.md) | Captures API/schema validation opportunities where applicable. |
| [recommendations.md](recommendations.md) | Converts findings into concrete documentation actions. |

## Recommended transformation

- Create a Customer Account API authentication behavior page.
- Add client-type decision matrix.
- Add GraphQL status/error and rate-limit response model.

## Outcome

The target outcome is not more documentation. The target outcome is less reconstruction.

A reader should be able to predict:

- which actor can perform the action;
- which state the object enters;
- which exception path applies;
- which downstream effect occurs;
- which page explains the behavior;
- which evidence supports the rule.
