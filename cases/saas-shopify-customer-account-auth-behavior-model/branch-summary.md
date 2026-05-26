# Branch Summary — SaaS Shopify Customer Account Auth Behavior Model

## Branches

| Branch ID | Scope | Supported interpretation | Status | Evidence basis | Notes |
|---|---|---|---|---|---|
| B-001 | Current authentication | New customer accounts use identity-provider-based authentication with ID token claims. | STABLE | E-REF-002, E-REF-003 | Keep distinct from legacy Storefront token flow. |
| B-002 | Legacy token flow | CustomerAccessToken is legacy-only and has expiration/renewal behavior. | STABLE | E-REF-005, E-REF-006 | Do not apply to new customer accounts. |
| B-003 | Migration boundary | Legacy Multipass and Storefront token flows do not support new customer accounts or claim import. | STABLE | E-REF-004 | Useful core branch. |
| B-004 | Operational exchange | Exact handoff from identity-provider flow to Customer Account API calls remains not-yet-reconstructible in the snapshot. | NOT-YET-RECONSTRUCTIBLE | Missing behavior table | Requires deeper docs. |

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
