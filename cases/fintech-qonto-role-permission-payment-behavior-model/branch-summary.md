# Branch Summary — Fintech Qonto Role Permission Payment Behavior Model

## Branches

| Branch ID | Scope | Supported interpretation | Status | Evidence basis | Notes |
|---|---|---|---|---|---|
| B-001 | Request visibility | Role-conditioned request visibility is documented for the requests endpoint. | STABLE | E-REF-002 | Keep this local to the requests endpoint. |
| B-002 | Plan eligibility | Endpoint availability is plan-conditioned. | STABLE | E-REF-003 | Do not generalize to all Qonto endpoints. |
| B-003 | Support roles | Support documentation describes role capabilities and plan-conditioned request actions. | FRAGILE | E-REF-004, E-REF-005 | Do not merge with API behavior without validation. |
| B-004 | Sub-account and workflow rules | Sub-account restrictions and approval workflows add another permission layer. | NOT-YET-RECONSTRUCTIBLE | E-REF-006 | Requires deeper validation. |

## Branch status values

- STABLE
- FRAGILE
- VOLATILE
- OSCILLATING
- COLLAPSING
- NOT-YET-RECONSTRUCTIBLE
- NON-RECONSTRUCTIBLE

## Branch preservation rule

Do not merge branches for readability.

Minority branches must remain visible when supported by evidence.
