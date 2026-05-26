# Reconstructive Scope: Cloudflare Secrets Store Behavior Model

## Included scopes

| Scope | Included? | Notes |
|---|---|---|
| Product documentation | Yes | Secrets Store overview. |
| Role documentation | Yes | Secrets Store access control. |
| Procedural workflow | Yes | Manage account secrets and Workers integration. |
| Runtime documentation | Yes | Worker binding and runtime access through `env`. |
| Audit documentation | Partial | Secrets Store audit log actions only. |
| API reference | No | Excluded unless needed later for token or endpoint behavior. |
| UI documentation | Partial | Included only when documented in procedural pages. |
| Support documentation | No | Not part of current scope. |
| FAQ | No | Not needed for this phase. |
| Release notes | No | Not part of current scope. |
| Error messages | No | Missing behavior, not documented evidence. |
| Webhooks | No | Not relevant to current behavior. |

## Excluded scopes

| Scope | Reason |
|---|---|
| Full Cloudflare Workers secrets model | Too broad. |
| API token permission model | Separate permission system. |
| BYOK behavior | Adjacent but outside current binding workflow. |
| AI Gateway association behavior | Adjacent integration, not the selected Worker binding workflow. |
| Local development secrets beyond documented limits | Would expand the environment boundary. |
| Runtime error taxonomy | Not documented enough in the current source set. |
| Cloudflare account role model in general | Only Secrets Store-specific role behavior is in scope. |

## Scope-locking rule

Findings must remain local to the scope where they were observed.

Do not generalize behavior across:

- API / UI
- human roles / API token permissions
- role types
- product plans
- regions
- versions
- examples and formal docs
- dashboard workflows and Wrangler workflows

## Current boundary

The current case only analyzes documented behavior around account-level secrets, Secrets Store roles, Worker bindings, runtime access, local development limits, and Secrets Store audit logging.

It does not claim full product behavior.
