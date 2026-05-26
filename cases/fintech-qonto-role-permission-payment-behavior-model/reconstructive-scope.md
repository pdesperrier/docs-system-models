# Reconstructive Scope — Fintech Qonto Role Permission Payment Behavior Model

## Included scopes

| Scope | Included? | Notes |
|---|---|---|
| Developer documentation | Yes | Source: Qonto developer introduction. Establishes the public developer documentation surface for Qonto APIs. |
| API reference | Yes | Source: List requests. Defines request visibility by role and plan for the requests endpoint. |
| Support documentation | Yes | Source: What are the different roles available?. Defines role capabilities, plan-conditioned actions, sub-account access, and approval workflow customization. |

## Excluded scopes

| Scope | Reason |
|---|---|
| Full Qonto payment lifecycle | Too broad for fallback scope. |
| Complete business banking API model | Would collapse accounts, transactions, memberships, payments, and requests into one case. |
| Private account configuration behavior | Requires product access. |
| Compliance and regulated payment authorization rules | Outside current public documentation snapshot. |

## Scope-locking rule

Findings must remain local to the scope where they were observed.

Do not generalize behavior across:

- API / UI
- role types
- product plans
- regions
- versions
- examples and formal docs
