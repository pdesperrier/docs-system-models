# Annotated Frictions — Qonto

## Purpose

This file records observable documentation frictions and translates them into operational consequences.

| Friction | Why it matters | Required documentation correction |
|---|---|---|
| payment action depends on role and permission scope, not role name alone | The reader must reconstruct behavior instead of executing a visible model. | Create a role/action/payment matrix. |
| approval path and authentication path can be confused when documented separately | The reader must reconstruct behavior instead of executing a visible model. | Separate authentication blockers from approval blockers. |
| visibility of blocked actions is difficult to infer | The reader must reconstruct behavior instead of executing a visible model. | Document visibility for each role at each payment state. |

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
