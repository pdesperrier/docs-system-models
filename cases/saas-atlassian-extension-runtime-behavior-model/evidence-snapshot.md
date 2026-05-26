# Evidence Snapshot — SaaS Atlassian Forge Extension Runtime Behavior Model

This file contains a portfolio-safe candidate evidence snapshot.

It is not a full evidence registry.

## Scope

How Forge manifest declarations connect modules, functions, scopes, egress permissions, remote calls, events, and runtime invocation boundaries.

## Source list

| Source | URL | Surface | Evidence class | Why it matters |
|---|---|---|---|---|
| Manifest reference | https://developer.atlassian.com/platform/forge/manifest-reference/ | Manifest structure | STRONG | Defines `app`, `modules`, and `permissions` as the central declaration surface. |
| Modules documentation | https://developer.atlassian.com/platform/forge/modules/ | Extension points | STRONG | Defines modules as the way Forge apps extend and interact with Atlassian apps. |
| Permissions reference | https://developer.atlassian.com/platform/forge/manifest-reference/permissions/ | Permission model | STRONG | Defines scopes, content permissions, external permissions, and egress declarations. |
| Runtime egress permissions | https://developer.atlassian.com/platform/forge/runtime-egress-permissions/ | Runtime boundary | STRONG | Defines runtime external communication limits for FaaS functions. |
| App context security | https://developer.atlassian.com/platform/forge/app-context-security/ | Authorization context | STRONG | Distinguishes trusted resolver context from browser-modifiable context. |
| Rolling releases | https://developer.atlassian.com/platform/forge/rolling-releases/ | Permission state | MEDIUM | Defines decoupled code and permission states under rolling releases. |
| Forge Remote essentials | https://developer.atlassian.com/platform/forge/remote/essentials/ | Remote contract | MEDIUM | Defines request methods, response constraints, timeout differences, and retry differences. |
| Atlassian app events | https://developer.atlassian.com/platform/forge/events-reference/product_events/ | Event behavior | MEDIUM | Defines event scope requirements and event delivery limitations. |
| Function module reference | https://developer.atlassian.com/platform/forge/manifest-reference/modules/function/ | Function invocation | MEDIUM | Defines external provider `requiredScopes` behavior before function invocation. |

## Evidence summary

| Evidence ref | Evidence class | Scope | Public-safe wording | Notes |
|---|---|---|---|---|
| E-REF-001 | STRONG | Manifest structure | The Forge manifest declares required top-level areas for app identity, modules, and permissions. | Establishes the primary configuration surface. |
| E-REF-002 | STRONG | Module behavior | Forge modules describe how an app extends and interacts with Atlassian apps. | Establishes extension point behavior. |
| E-REF-003 | STRONG | Permission scopes | The permissions section declares app scopes required for authenticated Atlassian Fetch APIs, events, and Forge Remote token passing. | Establishes scope declaration behavior. |
| E-REF-004 | STRONG | External communication | External permissions declare the resources a Forge UI app or function can access. | Establishes egress as a declared runtime boundary. |
| E-REF-005 | STRONG | Runtime egress | Runtime egress permissions apply to all FaaS functions, including Custom UI resolvers. | Extends egress behavior beyond one UI surface. |
| E-REF-006 | STRONG | Runtime blocking | Calls to domains not declared in the manifest are rejected. | Establishes a runtime failure boundary. |
| E-REF-007 | STRONG | Context security | Resolver context is documented as secure for authorization, while browser-side context is not. | Establishes a surface-specific trust boundary. |
| E-REF-008 | MEDIUM | Rolling releases | Rolling releases decouple code versions from permission versions. | Establishes state divergence between code and permissions. |
| E-REF-009 | MEDIUM | Missing permissions | In app-managed enforcement, an app may encounter permission denied errors or blocked external requests when attempting actions requiring unapproved permissions. | Establishes a runtime consequence in decoupled states. |
| E-REF-010 | MEDIUM | Remote contract | Forge Remote documents different timeout and retry behavior for UI modules versus events and scheduled triggers. | Establishes invocation-class divergence. |
| E-REF-011 | MEDIUM | Event behavior | Atlassian app events require site-admin-granted access to event payload data, and required scopes are documented per event. | Establishes event permission dependency. |
| E-REF-012 | MEDIUM | Event delivery limit | Atlassian app events larger than 200 kB are not delivered. | Establishes documented delivery boundary. |
| E-REF-013 | MEDIUM | External provider invocation | `requiredScopes` can prevent actual function invocation until the external provider grants the required scopes. | Establishes pre-invocation blocking behavior. |

## Candidate visible behaviors

| Object | Visible behavior | Evidence refs | Reconstruction note |
|---|---|---|---|
| Manifest | Connects app identity, modules, and permissions. | E-REF-001 | The manifest is the central reconstruction surface. |
| Module | Defines where and how the app extends an Atlassian product. | E-REF-002 | Extension behavior depends on module type. |
| Permissions | Declare scopes and external access requirements. | E-REF-003, E-REF-004 | Declared access does not equal successful runtime execution in all states. |
| Runtime egress | Blocks communication to undeclared domains. | E-REF-005, E-REF-006 | Runtime behavior is constrained by manifest declarations. |
| Context | Resolver context and browser-side context have different authorization trust properties. | E-REF-007 | Same logical context is not equally trustworthy across surfaces. |
| Rolling release | Code and permission versions can diverge. | E-REF-008, E-REF-009 | Runtime behavior can depend on installation permission state. |
| Forge Remote | Remote request behavior differs by invocation class. | E-REF-010 | UI module calls and event or scheduled-trigger calls do not share identical operational constraints. |
| Atlassian app event | Event delivery depends on scopes and payload limits. | E-REF-011, E-REF-012 | Delivery and payload availability cannot be assumed from trigger configuration alone. |
| External provider function | Required provider scopes can block invocation before function code runs. | E-REF-013 | Function execution can be gated before handler logic executes. |

## Candidate missing or implicit behaviors

| Missing or implicit behavior | Why it matters | Reconstruction effort |
|---|---|---|
| Exact runtime error shape when undeclared egress is attempted. | The rejection is documented, but error taxonomy and handling path require validation. | High |
| Exact behavior when code expects a permission that remains unapproved during a decoupled state. | Rolling releases document the state, but app-specific runtime consequences need validation. | High |
| Whether manifest examples and formal manifest schema expose identical constraints. | Example-driven documentation can hide schema-level boundaries. | Medium |
| How UI module invocation, backend resolver invocation, remote invocation, and event invocation differ operationally beyond documented timeout and retry differences. | Invocation behavior crosses several surfaces. | High |
| Whether app context security guarantees are visible enough to prevent browser-side authorization misuse. | Context data may look similar while having different trust properties. | High |
| Whether event payload omission or non-delivery is surfaced as an actionable operational signal. | Support and debugging paths depend on observability. | High |

## Behavioral documentation relevance

This candidate case is useful because it contains multiple documented runtime boundaries that are distributed across separate documentation surfaces.

The documentation does not only describe APIs.

It describes how a declared app shape becomes executable behavior, blocked behavior, or not-yet-granted behavior.

The likely documentation friction is dependency visibility: the reader must connect manifest declarations, module type, permission scope, egress rules, context trust, event scope, and invocation class.

## Evidence class guidance

- STRONG: manifest reference, permission reference, runtime restriction, explicit invocation boundary
- MEDIUM: remote contracts, event constraints, rolling release behavior, security guidance
- WEAK: tutorials, screenshots, snippets
- VERY WEAK: marketing, onboarding summaries

## Forbidden

Do not include:

- raw proprietary material
- unvalidated interpretations
- speculative transitions
- non-public internal notes

## Boundary

This snapshot records candidate visible evidence only.

It does not infer undocumented behavior.

Runtime errors, permission-denied handling, remote failure semantics, and event observability must remain marked as missing or implicit until validated.
