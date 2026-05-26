# Reconstructive Scope — SaaS Shopify Customer Account Auth Behavior Model

## Included scopes

| Scope | Included? | Notes |
|---|---|---|
| API reference | Yes | Source: Customer Account API reference. Establishes Customer Account API as customer-scoped authenticated data and action surface. |
| Authentication documentation | Yes | Source: Customer authentication. Defines identity-provider behavior and legacy flow limitations. |
| Legacy API reference | Yes | Source: CustomerAccessToken Storefront API. Defines legacy customer access token creation, purpose, expiration, and renewal behavior. |

## Excluded scopes

| Scope | Reason |
|---|---|
| Full Shopify customer account product behavior | Too broad. |
| Checkout authentication | Separate workflow. |
| Admin API customer behavior | Different API surface. |
| App-specific authentication implementation | Requires private integration details. |

## Scope-locking rule

Findings must remain local to the scope where they were observed.

Do not generalize behavior across:

- API / UI
- role types
- product plans
- regions
- versions
- examples and formal docs
