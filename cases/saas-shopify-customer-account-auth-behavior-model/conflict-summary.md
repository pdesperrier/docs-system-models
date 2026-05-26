# Conflict Summary — SaaS Shopify Customer Account Auth Behavior Model

## Conflict classes

| Conflict ID | Class | Scope | Summary | Operational consequence | Status |
|---|---|---|---|---|---|
| C-001 | DIVERGENCE | Current vs legacy authentication | Customer Account API authentication and legacy CustomerAccessToken behavior belong to different account models. | Developers may apply legacy token behavior to new customer accounts incorrectly. | Evidence-supported |
| C-002 | IRRECONCILABILITY | Identity-provider session vs Storefront token | ID-token-based session creation and Storefront CustomerAccessToken creation are different authentication models. | A single token mental model is not safe. | Evidence-supported |
| C-003 | DIVERGENCE | Token lifecycle vs session lifecycle | Legacy token expiration is documented, but current session lifecycle requires separate validation. | Expiration behavior cannot be generalized across authentication models. | Not-yet-reconstructible |

## Class definitions


CONTRADICTION:
- mutually exclusive claims

DIVERGENCE:
- incompatible operational or lifecycle models

IRRECONCILABILITY:
- incompatible scope, granularity, or abstraction layers


## Rule

Do not downgrade irreconcilability into ambiguity.
