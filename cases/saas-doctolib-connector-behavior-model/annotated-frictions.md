# Annotated Frictions — Doctolib

## Purpose

This file records observable documentation frictions and translates them into operational consequences.

| Friction | Why it matters | Required documentation correction |
|---|---|---|
| synchronization behavior depends on ownership, identifiers, connector state, and direction | The reader must reconstruct behavior instead of executing a visible model. | Create a synchronization behavior matrix. |
| duplicate handling is difficult to reason about without a combined model | The reader must reconstruct behavior instead of executing a visible model. | Model ownership authority and external identifier dependencies. |
| troubleshooting starts after the user has already inferred too much | The reader must reconstruct behavior instead of executing a visible model. | Add duplicate-resolution and conflict-state diagrams. |

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
