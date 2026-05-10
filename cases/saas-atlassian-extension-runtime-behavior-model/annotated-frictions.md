# Annotated Frictions — Atlassian

## Purpose

This file records observable documentation frictions and translates them into operational consequences.

| Friction | Why it matters | Required documentation correction |
|---|---|---|
| runtime behavior is distributed across deployment, permissions, rendering constraints, and extension target pages | The reader must reconstruct behavior instead of executing a visible model. | Create a runtime behavior map by extension target. |
| successful deployment does not guarantee runtime availability in every target | The reader must reconstruct behavior instead of executing a visible model. | Add deployment-to-availability state transitions. |
| permission propagation and rendering constraints are not visible in one model | The reader must reconstruct behavior instead of executing a visible model. | Centralize rendering constraints and permission prerequisites. |

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
