# Observability Gaps: Cloudflare Secrets Store Behavior Model

## Gaps

| Gap ID | Scope | Missing behavior | Observability class | Consequence | Required validation |
|---|---|---|---|---|---|
| G-001 | Role boundary | Failure behavior when Secrets Store Admin attempts Worker binding. | Operationally Hidden | The permission split is visible, but the failure path is not. | Test or documented error. |
| G-002 | Role boundary | Failure behavior when Secrets Store Deployer attempts secret creation or edition. | Operationally Hidden | Deployment rights may be misunderstood as management rights. | Test or documented error. |
| G-003 | Audit logs | Whether Worker binding changes appear in audit logs with enough detail. | Inferred | Traceability cannot be claimed from secret-operation logs alone. | Audit log documentation or test. |
| G-004 | Runtime access | Behavior when a bound secret is deleted, renamed, missing, or invalid. | Operationally Hidden | Support and debugging paths remain incomplete. | Runtime error documentation or test. |
| G-005 | Surface divergence | Whether dashboard binding and Wrangler binding produce identical runtime behavior. | Observable | Same target behavior may be reached through different surfaces. | Compare documented workflows or test. |
| G-006 | API/UI divergence | Whether human role behavior and API token permission behavior expose equivalent access boundaries. | Inferred | Role-based UI behavior and API token behavior must not be merged without evidence. | Compare role docs, API token docs, and API responses. |
| G-007 | Propagation behavior | Whether secret updates affect bound Workers immediately or after propagation. | Operationally Hidden | Runtime impact of secret replacement cannot be timed from current evidence. | Runtime test or documented propagation statement. |

## Observability classes

- Documented
- Observable
- Inferred
- Operationally Hidden
- Fundamentally Non-Observable

## Rule

Hidden causality must remain hidden unless explicitly evidenced.

A visible dependency is not proof of a visible failure path.
