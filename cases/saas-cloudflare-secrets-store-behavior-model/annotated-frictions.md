# Annotated Frictions — Cloudflare

## Purpose

This file records observable documentation frictions and translates them into operational consequences.

| Friction | Why it matters | Required documentation correction |
|---|---|---|
| role permissions, token permissions, binding behavior, runtime access, local development, and BYOK behavior are spread across areas | The reader must reconstruct behavior instead of executing a visible model. | Create a Secrets Store behavior model page. |
| secret existence and runtime availability are different states | The reader must reconstruct behavior instead of executing a visible model. | Add a permission/action/runtime matrix. |
| deletion or alias changes can affect downstream AI Gateway behavior | The reader must reconstruct behavior instead of executing a visible model. | Add lifecycle diagrams for secret creation, binding, rotation, deletion, and alias changes. |

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
