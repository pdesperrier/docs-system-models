# Observability Gaps — Fintech Qonto Role Permission Payment Behavior Model

## Gaps

| Gap ID | Scope | Missing behavior | Observability class | Consequence | Required validation |
|---|---|---|---|---|---|
| G-001 | Role mapping | Exact mapping between API roles and support-center roles. | Operationally Hidden | Role names alone may hide different permission models. | Compare API auth model, support roles, and endpoint examples. |
| G-002 | Failure behavior | Error response when an ineligible plan or role calls the endpoint. | Observable | Support and integration troubleshooting require failure semantics. | Endpoint test or documented error response. |
| G-003 | Approval workflow | Interaction between role permissions and amount-based approval workflows. | Operationally Hidden | Workflow authority cannot be inferred from role name alone. | Support workflow docs or test account. |
| G-004 | Sub-account restrictions | Effect of sub-account restrictions on endpoint visibility. | Operationally Hidden | Manager visibility may vary by sub-account boundary. | Support docs or API validation. |

## Observability classes

- Documented
- Observable
- Inferred
- Operationally Hidden
- Fundamentally Non-Observable

## Rule

Hidden causality must remain hidden unless explicitly evidenced.
