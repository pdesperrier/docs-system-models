# Branch Summary — SaaS Atlassian Forge Extension Runtime Behavior Model

## Branches

| Branch ID | Scope | Supported interpretation | Status | Evidence basis | Notes |
|---|---|---|---|---|---|
| B-001 | Manifest topology | Runtime behavior is partly reconstructed from the relationship between manifest, modules, and permissions. | STABLE | E-REF-001, E-REF-002, E-REF-003 | The manifest is the central configuration surface. |
| B-002 | Runtime egress | External communication is controlled by declared permissions and rejected when undeclared. | STABLE | E-REF-004, E-REF-005, E-REF-006 | Strong runtime boundary candidate. |
| B-003 | Context security | Authorization-safe context depends on the surface used to access context. | STABLE | E-REF-007 | Resolver context and browser-side context must remain separate branches. |
| B-004 | Decoupled permissions | Code and permission versions can diverge under rolling releases. | FRAGILE | E-REF-008, E-REF-009 | Needs validation in concrete app behavior. |
| B-005 | Invocation class | Remote request behavior differs between UI modules and events or scheduled triggers. | FRAGILE | E-REF-010 | Timeout and retry differences are visible, but operational consequences require testing. |
| B-006 | Event delivery | Event behavior depends on granted scopes and payload delivery limits. | FRAGILE | E-REF-011, E-REF-012 | Useful branch if the case is narrowed to event-driven runtime behavior. |
| B-007 | External provider gate | Function invocation can be blocked before handler code runs when provider scopes are missing. | FRAGILE | E-REF-013 | Candidate branch if external auth becomes the selected focus. |

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

Keep decoupled permission state, runtime egress, context trust, event delivery, and remote invocation as separate branches unless a later audit proves they share one operational model.
