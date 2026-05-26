# Observability Gaps — SaaS Document360 API Workspace Behavior Model

## Gaps

| Gap ID | Scope | Missing behavior | Observability class | Consequence | Required validation |
|---|---|---|---|---|---|
| G-001 | Import warnings | Blocking and non-blocking warning behavior during API reference creation. | Observable | Import reliability cannot be assessed from warnings alone. | Need warning taxonomy or test imports. |
| G-002 | Custom content retention | Merge behavior between regenerated spec content and custom content. | Operationally Hidden | Editors need to know what survives resync. | Need resync test or detailed docs. |
| G-003 | Access control | Exact permission separation between API workspace and standard knowledge base. | Operationally Hidden | Workspace separation may imply distinct governance behavior. | Need workspace permission docs. |
| G-004 | CI/CD failure behavior | Resync failure states and recovery behavior. | Observable | Automation requires explicit failure handling. | Need CI/CD docs or test logs. |

## Observability classes

- Documented
- Observable
- Inferred
- Operationally Hidden
- Fundamentally Non-Observable

## Rule

Hidden causality must remain hidden unless explicitly evidenced.
