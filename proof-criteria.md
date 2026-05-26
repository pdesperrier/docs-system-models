# Proof Criteria

## Purpose

This file defines reusable criteria for selecting and validating behavioral documentation portfolio cases.

## Required criteria

A portfolio case is valid when it meets all criteria below.

| Criterion | Requirement |
|---|---|
| Narrow object | The case focuses on one role, state, transition, permission, status, endpoint, or error behavior. |
| Visible evidence | The behavior is visible in public documentation or public product-facing material. |
| Localized friction | The documentation friction can be tied to a specific object or workflow segment. |
| Market need | The friction connects to operational understanding, support risk, developer friction, AI retrieval risk, or product adoption. |
| Sellable offer | The case supports at least one defined offer. |
| Matrix potential | The case can produce a behavior matrix. |
| Target audience | The case maps to an identifiable professional audience. |

## Strong proof signals

- explicit role table
- permission boundary
- lifecycle state
- status transition
- API endpoint behavior
- error behavior
- configuration dependency
- runtime condition
- support article that exposes operational constraints
- documentation surfaces that describe the same object differently

## Weak proof signals

- marketing description
- generic feature overview
- isolated screenshot
- unsourced example
- broad product claim
- vague best-practice page

## Rejection criteria

Reject the case when:

- the scope requires analyzing a full product
- the behavior is not observable
- the friction cannot be localized
- the audience is unclear
- the case cannot produce a behavior matrix
- the proof depends mainly on inference
- the documentation only exposes positioning claims
- the analysis would require private product access

## Minimum viable proof

A case is minimally valid when it exposes:

1. one object
2. one behavior
3. one localized friction
4. three visible evidence points
5. three missing or implicit elements
6. one offer connection
7. one target audience

## Phase 0 decision rule

Select the case that can expose three implicit behaviors in less than thirty minutes.

Move all broader candidates to the cold backlog.