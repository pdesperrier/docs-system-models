# Observability Gaps — SaaS Atlassian Forge Extension Runtime Behavior Model

## Gaps

| Gap ID | Scope | Missing behavior | Observability class | Consequence | Required validation |
|---|---|---|---|---|---|
| G-001 | Runtime egress | Exact error shape when a function calls an undeclared external domain. | Operationally Hidden | Rejection is visible in documentation, but handling and debugging behavior remain incomplete. | Runtime test or explicit error documentation. |
| G-002 | Rolling releases | Exact runtime behavior when code expects a permission that remains unapproved. | Operationally Hidden | The decoupled state is documented, but the app-specific failure path must be validated. | Decoupled-state test or Permissions SDK documentation audit. |
| G-003 | Context security | How teams detect misuse of browser-side context for authorization. | Operationally Hidden | The trust boundary is documented, but enforcement or observability is unclear. | Security guide validation or runtime pattern test. |
| G-004 | Forge Remote | Operational signal when event or scheduled-trigger remote calls exhaust retries. | Observable | Retry behavior is documented, but operational recovery path requires validation. | Remote retry documentation or controlled test. |
| G-005 | Events | Signal exposed when an event is not delivered because payload size exceeds the documented limit. | Operationally Hidden | Event-driven workflows may be hard to debug. | Event documentation audit or test. |
| G-006 | Function provider scopes | Observable behavior when `requiredScopes` triggers consent and handler code is not invoked. | Observable | Invocation can be blocked before code runs, but exact traceability needs validation. | External auth test or documentation audit. |

## Observability classes

- Documented
- Observable
- Inferred
- Operationally Hidden
- Fundamentally Non-Observable

## Rule

Hidden causality must remain hidden unless explicitly evidenced.

Do not present a blocked invocation, missing permission, or rejected egress call as fully reconstructible until the observable signal is documented or tested.
