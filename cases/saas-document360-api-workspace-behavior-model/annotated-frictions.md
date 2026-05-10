# Annotated Frictions — Document360

## Purpose

This file records observable documentation frictions and translates them into operational consequences.

| Friction | Why it matters | Required documentation correction |
|---|---|---|
| workspace, OpenAPI import, Try It, access settings, and publication state are separate decision layers | The reader must reconstruct behavior instead of executing a visible model. | Create an API workspace lifecycle model. |
| reader-facing behavior depends on editor and access configuration | The reader must reconstruct behavior instead of executing a visible model. | Map editor state to reader/developer behavior. |
| import failure and publication failure need a lifecycle view | The reader must reconstruct behavior instead of executing a visible model. | Add import validation and access-state matrices. |

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
