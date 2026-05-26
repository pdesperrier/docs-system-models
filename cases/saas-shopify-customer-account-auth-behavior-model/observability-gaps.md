# Observability Gaps — SaaS Shopify Customer Account Auth Behavior Model

## Gaps

| Gap ID | Scope | Missing behavior | Observability class | Consequence | Required validation |
|---|---|---|---|---|---|
| G-001 | Token exchange | Exact operational exchange from identity provider flow to Customer Account API request authorization. | Operationally Hidden | Integration path remains incomplete at snapshot level. | Need full authentication flow docs or implementation example. |
| G-002 | Failure behavior | Expired, invalid, mismatched, or unsupported-token errors across current and legacy models. | Observable | Debugging requires model-specific errors. | Need error docs or tests. |
| G-003 | Migration behavior | Classic-to-new customer account transition constraints. | Operationally Hidden | Migration risk cannot be assessed from legacy boundary alone. | Need migration docs. |
| G-004 | Claim matching | Behavior when email or sub claims conflict, change, or duplicate. | Operationally Hidden | Customer identity continuity depends on claim behavior. | Need claim import details. |

## Observability classes

- Documented
- Observable
- Inferred
- Operationally Hidden
- Fundamentally Non-Observable

## Rule

Hidden causality must remain hidden unless explicitly evidenced.
