# Reconstructibility Findings: Cloudflare Secrets Store Behavior Model

## Findings

| Finding ID | Scope | Finding | Status | Evidence basis | Reconstructive burden |
|---|---|---|---|---|---|
| F-001 | Secret lifecycle | Account secret creation is reconstructible as a separate behavior from Worker binding. | Reconstructible | E-REF-006, E-REF-007 | Medium |
| F-002 | Role boundary | Secrets Store Admin and Secrets Store Deployer expose a split between secret management and deployment. | Reconstructible | E-REF-003, E-REF-004 | High |
| F-003 | Runtime access | Worker runtime access depends on a prior binding and uses asynchronous access through `env`. | Reconstructible | E-REF-007, E-REF-008 | Medium |
| F-004 | Local development | Production secrets created remotely are not accessible from local development. | Reconstructible | E-REF-009 | Medium |
| F-005 | Audit traceability | Secret operation logging is partially reconstructible, but Worker binding traceability remains not-yet-reconstructible. | Not-yet-reconstructible | E-REF-010 | High |
| F-006 | Failure behavior | Permission failure paths and runtime secret error behavior are not reconstructible from the current evidence snapshot. | Not-yet-reconstructible | Missing behavior table | High |
| F-007 | Secret value visibility | The inability to view a saved secret value is reconstructible and affects recovery behavior. | Reconstructible | E-REF-011 | Medium |
| F-008 | Secret update impact | Secret replacement has documented cross-service implications, but propagation behavior remains not-yet-reconstructible. | Not-yet-reconstructible | E-REF-012 | High |

## Required distinction

Separate:

- reconstructible behavior
- not-yet-reconstructible behavior
- non-reconstructible behavior

## Anti-hallucination rule

If a behavior requires speculative inference, it must not be presented as documented.

Do not infer permission inheritance from role labels.

Do not infer runtime failure behavior from configuration examples.

Do not infer audit traceability from the existence of audit logs.
