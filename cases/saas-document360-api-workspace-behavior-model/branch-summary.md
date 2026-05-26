# Branch Summary — SaaS Document360 API Workspace Behavior Model

## Branches

| Branch ID | Scope | Supported interpretation | Status | Evidence basis | Notes |
|---|---|---|---|---|---|
| B-001 | Workspace boundary | API documentation behaves as a dedicated workspace separate from the standard knowledge base. | STABLE | E-REF-001 | Good candidate for later topology analysis. |
| B-002 | Import workflow | File, URL, and CI/CD input paths generate API references. | STABLE | E-REF-002 | Keep input paths separate. |
| B-003 | Regeneration | Resync updates generated API documentation from the latest specification. | FRAGILE | E-REF-005 | Custom content retention requires validation. |
| B-004 | Interactive capability | Try it behavior differs between endpoints and webhooks. | STABLE | E-REF-006 | Useful narrow behavior for future analysis. |

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
