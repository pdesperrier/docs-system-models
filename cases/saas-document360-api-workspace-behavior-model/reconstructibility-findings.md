# Reconstructibility Findings — SaaS Document360 API Workspace Behavior Model

## Findings

| Finding ID | Scope | Finding | Status | Evidence basis | Reconstructive burden |
|---|---|---|---|---|---|
| F-001 | Workspace topology | API documentation workspace separation is reconstructible. | Reconstructible | E-REF-001 | Medium |
| F-002 | Import workflow | Multiple input paths for API reference generation are reconstructible. | Reconstructible | E-REF-002, E-REF-003 | Medium |
| F-003 | Regeneration | Regeneration behavior is partially reconstructible, but merge semantics remain not-yet-reconstructible. | Not-yet-reconstructible | E-REF-005 | High |
| F-004 | Interactive behavior | Try it availability differs between endpoints and webhooks. | Reconstructible | E-REF-006 | Medium |

## Required distinction

Separate:

- reconstructible behavior
- not-yet-reconstructible behavior
- non-reconstructible behavior

## Anti-hallucination rule

If a behavior requires speculative inference, it must not be presented as documented.
