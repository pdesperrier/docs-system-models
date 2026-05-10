# Annotated Frictions — PaymentBehaviorModel

## Purpose

This file records observable documentation frictions and translates them into operational consequences.

| Friction | Why it matters | Required documentation correction |
|---|---|---|
| approval behavior is split between role rules, amount thresholds, status descriptions, and webhook documentation | The reader must reconstruct behavior instead of executing a visible model. | Create one approval behavior page linking roles, threshold, status, webhook, and next action. |
| developers must infer which webhook corresponds to which approval state | The reader must reconstruct behavior instead of executing a visible model. | Add a state diagram for payment approval transitions. |
| blocked paths are less visible than the nominal payment creation path | The reader must reconstruct behavior instead of executing a visible model. | Add an exception matrix for insufficient permission, threshold exceeded, approval rejected, and webhook delivery failure. |

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
