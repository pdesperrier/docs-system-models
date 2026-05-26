# Branch Summary: Cloudflare Secrets Store Behavior Model

## Branches

| Branch ID | Scope | Supported interpretation | Status | Evidence basis | Notes |
|---|---|---|---|---|---|
| B-001 | Secret management | Secret creation and secret binding are separate operational behaviors. | STABLE | E-REF-006, E-REF-007 | Creation rights do not imply binding rights. |
| B-002 | Role boundary | Secrets Store Admin can manage secrets, but Worker binding is not documented as part of that role. | FRAGILE | E-REF-003, E-REF-007 | Requires validation against access-control and integration docs. |
| B-003 | Deployment boundary | Secrets Store Deployer can bind a secret to a Worker without being able to create or edit the secret. | STABLE | E-REF-004, E-REF-007 | Strong split between preparation and deployment. |
| B-004 | Runtime behavior | A bound account secret becomes accessible to Worker code through asynchronous runtime access. | STABLE | E-REF-008 | Runtime access depends on prior binding. |
| B-005 | Local environment boundary | Production secrets created remotely are not accessible from local development. | STABLE | E-REF-009 | Environment scope changes available behavior. |
| B-006 | Observability | Audit logs show core Secrets Store actions, but full Worker binding traceability is not yet proven. | FRAGILE | E-REF-010 | Keep separate from documented secret operations. |
| B-007 | Secret update dependency | Editing a secret affects services using that secret, but propagation timing remains unverified. | FRAGILE | E-REF-012 | Service-wide impact is visible, propagation behavior is not. |

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

A branch can be stable at the documented-permission level and fragile at the operational-failure level.
