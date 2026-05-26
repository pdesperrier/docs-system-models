# Reconstructive Scope — SaaS Atlassian Forge Extension Runtime Behavior Model

## Included scopes

| Scope | Included? | Notes |
|---|---|---|
| Manifest reference | Yes | Defines the top-level structure connecting app identity, modules, and permissions. |
| Modules documentation | Yes | Defines how Forge apps extend and interact with Atlassian apps. |
| Function module reference | Partial | Included only for handler linkage and external provider invocation boundaries. |
| Permissions reference | Yes | Defines scopes, content permissions, external permissions, and egress declarations. |
| Runtime egress permissions | Yes | Defines how external communication is controlled for Forge runtime functions. |
| App context security | Yes | Defines which context sources are safe or unsafe for authorization. |
| Rolling releases | Partial | Included only for decoupled permission states and runtime missing-permission handling. |
| Forge Remote essentials | Partial | Included only for remote request contracts, timeouts, methods, and retry differences. |
| Atlassian app events | Partial | Included only for event permission requirements and delivery limits. |
| API reference | No | Excluded unless a later audit selects one specific Atlassian REST operation. |
| Marketplace security overview | No | Too broad for the candidate scope. |
| Community discussions | No | Useful later, but not part of the current evidence baseline. |

## Excluded scopes

| Scope | Reason |
|---|---|
| Full Forge platform audit | Too broad. |
| Connect-to-Forge migration behavior | Adjacent migration problem, not the current runtime boundary. |
| Full Atlassian REST API permission matrix | Too broad unless reduced to one operation. |
| Product-specific UI behavior in Jira, Confluence, or Bitbucket | Would move the case from platform runtime to product surface behavior. |
| App billing, licensing, and Marketplace approval | Outside runtime behavior. |
| Developer console management | Adjacent operational surface, not the current behavior chain. |
| Incident, quota, or rate-limit behavior | Not in the current candidate scope. |

## Scope-locking rule

Findings must remain local to the documentation surface where they were observed.

Do not generalize behavior across:

- manifest examples and formal references
- UI modules and backend functions
- Atlassian app events and non-Atlassian events
- scopes and product permissions
- egress declarations and remote contracts
- code versions and permission versions
- frontend context and resolver context
- beta modules and stable modules
