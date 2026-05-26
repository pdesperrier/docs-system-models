# Reconstructibility Findings — Fintech Qonto Role Permission Payment Behavior Model

## Findings

| Finding ID | Scope | Finding | Status | Evidence basis | Reconstructive burden |
|---|---|---|---|---|---|
| F-001 | Requests endpoint | Role-conditioned request visibility is reconstructible for the list requests endpoint. | Reconstructible | E-REF-002 | Medium |
| F-002 | Plan boundary | Endpoint availability is reconstructible as plan-conditioned. | Reconstructible | E-REF-003 | Medium |
| F-003 | Role capabilities | Support documentation makes some payment-request capabilities visible, but not fully mappable to API behavior. | Not-yet-reconstructible | E-REF-004, E-REF-005 | High |
| F-004 | Permission topology | Role, plan, sub-account restriction, and approval workflow form a distributed permission model. | Not-yet-reconstructible | E-REF-006 | High |

## Required distinction

Separate:

- reconstructible behavior
- not-yet-reconstructible behavior
- non-reconstructible behavior

## Anti-hallucination rule

If a behavior requires speculative inference, it must not be presented as documented.
