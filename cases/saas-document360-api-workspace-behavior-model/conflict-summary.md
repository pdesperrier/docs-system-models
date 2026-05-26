# Conflict Summary — SaaS Document360 API Workspace Behavior Model

## Conflict classes

| Conflict ID | Class | Scope | Summary | Operational consequence | Status |
|---|---|---|---|---|---|
| C-001 | DIVERGENCE | Generated vs editorial content | Generated API references and retained custom content are different content classes within the same reference workflow. | Regeneration may preserve content while changing generated structure. | Evidence-supported |
| C-002 | IRRECONCILABILITY | API workspace vs knowledge base | API documentation workspace and standard knowledge base use different workspace models. | A knowledge base mental model may not reconstruct API documentation behavior correctly. | Evidence-supported |
| C-003 | DIVERGENCE | Endpoint vs webhook behavior | Try it is available for endpoints but not for webhooks. | Interactive API behavior cannot be generalized across API object types. | Evidence-supported |

## Class definitions


CONTRADICTION:
- mutually exclusive claims

DIVERGENCE:
- incompatible operational or lifecycle models

IRRECONCILABILITY:
- incompatible scope, granularity, or abstraction layers


## Rule

Do not downgrade irreconcilability into ambiguity.
