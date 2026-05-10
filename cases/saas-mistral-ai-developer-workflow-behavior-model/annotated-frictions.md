# Annotated Frictions — Mistral AI

## Purpose

This file records observable documentation frictions and translates them into operational consequences.

| Friction | Why it matters | Required documentation correction |
|---|---|---|
| examples expose implementation fragments but not always one ingestion-to-runtime model | The reader must reconstruct behavior instead of executing a visible model. | Create an end-to-end developer workflow spine. |
| file state, tool configuration, API key, endpoint, and rate limits interact at runtime | The reader must reconstruct behavior instead of executing a visible model. | Add state diagrams for file/RAG readiness and runtime errors. |
| retryable and non-retryable errors need a clearer operational split | The reader must reconstruct behavior instead of executing a visible model. | Separate configuration errors from runtime limit errors. |

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
