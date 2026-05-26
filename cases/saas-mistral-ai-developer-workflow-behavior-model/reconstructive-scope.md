# Reconstructive Scope — SaaS Mistral AI Developer Workflow Behavior Model

## Included scopes

| Scope | Included? | Notes |
|---|---|---|
| API and workflow documentation | Yes | Source: Libraries. Defines Library behavior, document status checks, and processing status examples. |
| Developer quickstart | Yes | Source: Set up RAG with document search. Defines a developer path from Library/document setup to retrieval-grounded chat completion. |

## Excluded scopes

| Scope | Reason |
|---|---|
| Full Mistral platform workflow | Too broad. |
| Model answer quality evaluation | Outside documentation behavior scope. |
| OCR and multimodal ingestion | Adjacent, separate case. |
| Enterprise access policy behavior | Requires deeper source validation. |

## Scope-locking rule

Findings must remain local to the scope where they were observed.

Do not generalize behavior across:

- API / UI
- role types
- product plans
- regions
- versions
- examples and formal docs
