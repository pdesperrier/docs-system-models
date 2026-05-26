# Reconstructibility Findings — SaaS Shopify Customer Account Auth Behavior Model

## Findings

| Finding ID | Scope | Finding | Status | Evidence basis | Reconstructive burden |
|---|---|---|---|---|---|
| F-001 | Authentication model | Current Customer Account API authentication is reconstructible as identity-provider-based. | Reconstructible | E-REF-002, E-REF-003 | Medium |
| F-002 | Legacy boundary | CustomerAccessToken is reconstructible as legacy-only. | Reconstructible | E-REF-005 | Medium |
| F-003 | Token lifecycle | Legacy CustomerAccessToken expiration and renewal behavior is reconstructible. | Reconstructible | E-REF-006 | Medium |
| F-004 | Model separation | Current and legacy authentication models must remain separate. | Reconstructible | E-REF-004, E-REF-005 | High |
| F-005 | Operational handoff | Full current authentication-to-API request behavior is not-yet-reconstructible from this snapshot. | Not-yet-reconstructible | Missing behavior table | High |

## Required distinction

Separate:

- reconstructible behavior
- not-yet-reconstructible behavior
- non-reconstructible behavior

## Anti-hallucination rule

If a behavior requires speculative inference, it must not be presented as documented.
