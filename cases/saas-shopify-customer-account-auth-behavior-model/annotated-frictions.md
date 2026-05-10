# Annotated Frictions — Shopify

## Purpose

This file records observable documentation frictions and translates them into operational consequences.

| Friction | Why it matters | Required documentation correction |
|---|---|---|
| discovery, PKCE, token exchange, endpoint selection, HTTP status, GraphQL errors, and rate limits are distributed | The reader must reconstruct behavior instead of executing a visible model. | Create a Customer Account API authentication behavior page. |
| HTTP 200 GraphQL errors break a simple status-code mental model | The reader must reconstruct behavior instead of executing a visible model. | Add client-type decision matrix. |
| client type changes required parameters and error paths | The reader must reconstruct behavior instead of executing a visible model. | Add GraphQL status/error and rate-limit response model. |

## Friction classification

| Category | Present risk |
|---|---|
| Concept | Term exists but relationships may remain implicit. |
| Workflow | Steps may be correct but distributed. |
| Exception | Failure paths may be separated from the main path. |
| Role | Role names may not define action scope. |
| State | Status values may not define lifecycle transitions. |
| Dependency | Configuration or environment may silently change behavior. |
| Version | Behavior may drift between versions or modes. |
| Localization | Source terms may create translation or UI/docs drift. |
