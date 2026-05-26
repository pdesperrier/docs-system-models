# Conflict Summary — SaaS Atlassian Forge Extension Runtime Behavior Model

## Conflict classes

| Conflict ID | Class | Scope | Summary | Operational consequence | Status |
|---|---|---|---|---|---|
| C-001 | DIVERGENCE | Context security | Resolver context and browser-side context expose similar contextual information but different authorization trust properties. | Developers may treat browser-side context as authorization-safe when documentation separates that trust boundary. | Candidate evidence-supported |
| C-002 | DIVERGENCE | Runtime egress | Manifest-declared external access and runtime external request behavior are separate surfaces. | A domain declaration becomes an operational runtime boundary, not just configuration metadata. | Candidate evidence-supported |
| C-003 | DIVERGENCE | Rolling releases | Code version and permission version can be decoupled. | New code may run while permissions remain unapproved, forcing runtime checks for missing permissions. | Candidate evidence-supported |
| C-004 | IRRECONCILABILITY | Invocation classes | UI module remote requests and event or scheduled-trigger remote requests have different method, timeout, and retry characteristics. | A single “remote call” mental model is insufficient for operational behavior. | Candidate evidence-supported |
| C-005 | DIVERGENCE | Event delivery | A configured event does not guarantee delivered or usable payload data without required scopes and size constraints. | Event-driven workflows may fail or omit data in ways that require separate debugging paths. | Candidate evidence-supported |

## Class definitions

CONTRADICTION:
- mutually exclusive claims

DIVERGENCE:
- incompatible operational or lifecycle models

IRRECONCILABILITY:
- incompatible scope, granularity, or abstraction layers

## Rule

Do not downgrade irreconcilability into ambiguity.

Do not convert candidate divergences into final claims until the audit validates the evidence chain.
