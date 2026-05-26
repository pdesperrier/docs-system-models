# Reconstructibility Findings — SaaS Atlassian Forge Extension Runtime Behavior Model

## Findings

| Finding ID | Scope | Finding | Status | Evidence basis | Reconstructive burden |
|---|---|---|---|---|---|
| F-001 | Manifest topology | The connection between manifest, modules, and permissions is reconstructible as a candidate behavior chain. | Candidate reconstructible | E-REF-001, E-REF-002, E-REF-003 | Medium |
| F-002 | Runtime egress | External runtime communication is reconstructible as a manifest-declared boundary with runtime rejection for undeclared domains. | Candidate reconstructible | E-REF-004, E-REF-005, E-REF-006 | High |
| F-003 | Context trust | Authorization-safe context is reconstructible only when the documentation surface is preserved. | Candidate reconstructible | E-REF-007 | High |
| F-004 | Rolling release state | Decoupled code and permission states are reconstructible at concept level, but app-specific failure behavior remains not-yet-reconstructible. | Not-yet-reconstructible | E-REF-008, E-REF-009 | High |
| F-005 | Remote invocation | Remote method, timeout, and retry differences are candidate reconstructible by invocation class. | Candidate reconstructible | E-REF-010 | Medium |
| F-006 | Event behavior | Event scope requirements and payload-size delivery limits are candidate reconstructible, but operational failure signals remain not-yet-reconstructible. | Not-yet-reconstructible | E-REF-011, E-REF-012 | High |
| F-007 | Provider-scope gate | External provider required scopes can block function invocation before handler code runs, but traceability requires validation. | Candidate reconstructible | E-REF-013 | Medium |

## Required distinction

Separate:

- reconstructible behavior
- candidate reconstructible behavior
- not-yet-reconstructible behavior
- non-reconstructible behavior

## Anti-hallucination rule

If a behavior requires speculative inference, it must not be presented as documented.

This backlog skeleton identifies candidate findings only.

It does not validate final behavior.
