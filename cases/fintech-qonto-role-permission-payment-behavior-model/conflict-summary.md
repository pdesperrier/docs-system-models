# Conflict Summary — Fintech Qonto Role Permission Payment Behavior Model

## Conflict classes

| Conflict ID | Class | Scope | Summary | Operational consequence | Status |
|---|---|---|---|---|---|
| C-001 | DIVERGENCE | Visibility vs action | Request visibility and payment-request capability are documented as different behaviors. | A user may be able to see a request without having the same payment or approval capability. | Evidence-supported |
| C-002 | IRRECONCILABILITY | API vs support granularity | API endpoint visibility and support-center role descriptions operate at different abstraction levels. | The reader must avoid collapsing support roles into API permissions. | Evidence-supported |
| C-003 | DIVERGENCE | Plan vs role | Plan eligibility and role permission both affect behavior. | A role may not be enough to reconstruct access without plan context. | Evidence-supported |

## Class definitions


CONTRADICTION:
- mutually exclusive claims

DIVERGENCE:
- incompatible operational or lifecycle models

IRRECONCILABILITY:
- incompatible scope, granularity, or abstraction layers


## Rule

Do not downgrade irreconcilability into ambiguity.
