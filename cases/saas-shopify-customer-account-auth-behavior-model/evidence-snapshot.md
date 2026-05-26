# Evidence Snapshot — SaaS Shopify Customer Account Auth Behavior Model

This file contains a portfolio-safe snapshot of visible evidence.

It is not a full evidence registry.

## Scope

How Shopify Customer Account API authentication differs from legacy Storefront CustomerAccessToken behavior.

## Source list

| Source | URL | Surface | Evidence class | Why it matters |
|---|---|---|---|---|
| Customer Account API reference | https://shopify.dev/docs/api/customer/latest | API reference | MEDIUM | Establishes Customer Account API as customer-scoped authenticated data and action surface. |
| Customer authentication | https://shopify.dev/docs/api/customer-authentication/index | Authentication documentation | STRONG | Defines identity-provider behavior and legacy flow limitations. |
| CustomerAccessToken Storefront API | https://shopify.dev/docs/api/storefront/latest/objects/CustomerAccessToken | Legacy API reference | STRONG | Defines legacy customer access token creation, purpose, expiration, and renewal behavior. |

## Evidence summary

| Evidence ref | Evidence class | Scope | Public-safe wording | Notes |
|---|---|---|---|---|
| E-REF-001 | MEDIUM | Customer Account API | Customer Account API is documented as the source for customer-scoped data and authenticated customer actions. | Current API boundary. |
| E-REF-002 | STRONG | Identity provider flow | Customer authentication uses an identity provider that returns an ID token to Shopify. | Authentication authority is externalized. |
| E-REF-003 | STRONG | Session identity | Shopify uses email and sub claims from the ID token to identify the customer and create or resume a session. | Claim dependency is explicit. |
| E-REF-004 | STRONG | Legacy limitation | Multipass and Storefront API token flow with classic customer accounts are documented as legacy methods that do not support new customer accounts or claim import. | Migration boundary. |
| E-REF-005 | STRONG | Legacy token creation | CustomerAccessToken creation through Storefront API is documented for legacy customer accounts only. | Legacy-only boundary. |
| E-REF-006 | STRONG | Legacy token lifecycle | CustomerAccessToken has expiration behavior and can be renewed before expiration or recreated after expiration. | Token lifecycle is visible. |

## Visible behaviors

| Object | Visible behavior | Evidence refs | Reconstruction note |
|---|---|---|---|
| Customer Account API | Serves customer-scoped data and authenticated customer actions. | E-REF-001 | API purpose is visible. |
| Identity provider | Returns an ID token to Shopify. | E-REF-002 | Authority source is reconstructible. |
| Customer session | Email and sub claims identify the customer and create or resume the session. | E-REF-003 | Claim dependency is visible. |
| Legacy boundary | Multipass and Storefront token flow do not support new customer accounts or claim import. | E-REF-004 | Migration boundary is visible. |
| CustomerAccessToken | Created for legacy customer accounts only. | E-REF-005 | Legacy-only API behavior is reconstructible. |
| Token expiration | Legacy customer access token expires, can be renewed before expiry, or recreated after expiry. | E-REF-006 | Lifecycle behavior is visible. |

## Missing or implicit behaviors

| Missing or implicit behavior | Why it matters | Reconstruction effort |
|---|---|---|
| Exact token exchange path from identity-provider authentication to Customer Account API calls. | Developers need the operational bridge between authentication and API requests. | High |
| Failure behavior for expired, invalid, or mismatched tokens in each account model. | Support and debugging require error semantics. | High |
| Migration behavior for existing classic customer account implementations. | Legacy-to-new account transitions are a common integration risk. | High |
| Whether all customer-scoped actions use identical authentication requirements. | Customer Account API may have object-specific behavior. | Medium |
| Claim import edge cases and duplicate customer identity behavior. | Identity matching depends on claims. | Medium |

## Behavioral documentation relevance

This case is useful because it separates documented behavior from behavior that still requires reconstruction.

The documentation friction is not treated as missing wording. It is treated as dependency visibility: the reader must reconstruct how the documented objects, roles, states, transitions, or workflows interact across surfaces.

## Evidence class guidance

- STRONG: API contracts, role tables, explicit permissions, explicit errors, procedural workflows
- MEDIUM: UI walkthroughs, SDK examples, support documentation, quickstarts, product documentation
- WEAK: FAQ, screenshots, snippets
- VERY WEAK: marketing, onboarding summaries

## Forbidden

Do not include:

- raw proprietary material
- unvalidated interpretations
- speculative transitions
- non-public internal notes

## Boundary

This snapshot records visible evidence only.

It does not infer undocumented behavior.
