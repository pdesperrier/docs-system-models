# Reconstructive Scope — SaaS Document360 API Workspace Behavior Model

## Included scopes

| Scope | Included? | Notes |
|---|---|---|
| Product documentation | Yes | Source: Getting started with API documentation. Defines onboarding, API workspace separation, import options, supported formats, Try it behavior, and webhooks behavior. |
| Procedural workflow | Yes | Source: Managing API documentation. Defines generation methods, upload and URL workflows, warnings, regeneration, resync, custom content retention, and API reference download. |
| API reference surface | Yes | Source: Document360 API Hub. Establishes the public API reference surface for Document360 APIs. |

## Excluded scopes

| Scope | Reason |
|---|---|
| Full Document360 knowledge base model | Too broad. |
| Customer-specific API docs projects | Requires private access. |
| Full Document360 REST API behavior | Separate case. |
| Content governance beyond API workspace behavior | Adjacent, not in current scope. |

## Scope-locking rule

Findings must remain local to the scope where they were observed.

Do not generalize behavior across:

- API / UI
- role types
- product plans
- regions
- versions
- examples and formal docs
