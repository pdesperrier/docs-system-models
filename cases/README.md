# Portfolio Cases

This directory contains portfolio-safe case folders for behavioral documentation and reconstructibility analysis.

The folders are not raw audit repositories.

They contain sanitized case material, candidate evidence, findings, public-safe narratives, and backlog scaffolds.

## Status categories

| Status | Meaning |
|---|---|
| Active case | Current case being analyzed or prepared. |
| Fallback case skeleton | Secondary case kept available if the active case blocks. |
| Warm backlog skeleton | Candidate case likely useful soon, but not yet analyzed. |
| Cold backlog skeleton | Candidate case kept for later positioning or evidence exploration. |

## Current case inventory

| Case | Status | Use |
|---|---|---|
| `saas-cloudflare-secrets-store-behavior-model` | Active case | Primary portfolio case. |
| `fintech-qonto-role-permission-payment-behavior-model` | Fallback case skeleton | Use only if the Cloudflare case blocks. |
| `saas-shopify-customer-account-auth-behavior-model` | Warm backlog skeleton | Candidate for authentication and token behavior. |
| `saas-mistral-ai-developer-workflow-behavior-model` | Warm backlog skeleton | Candidate for Libraries, ingestion, processing status, and retrieval behavior. |
| `saas-document360-api-workspace-behavior-model` | Cold backlog skeleton | Candidate for knowledge base workspace and API behavior. |
| `saas-atlassian-extension-runtime-behavior-model` | Cold backlog skeleton | Candidate for Forge manifest-driven runtime behavior. |

## Removed folders

Non-public archives and fictional examples are excluded from the public cases directory.

## Inclusion rule

A folder may remain in `cases/` only when it is one of the following:

- active case
- fallback case skeleton
- warm backlog skeleton
- cold backlog skeleton

## Evidence rule

Do not include:

- raw proprietary material
- unvalidated internal notes
- speculative transitions
- inferred permissions presented as documented
- undocumented runtime behavior presented as verified

## Portfolio rule

A case is publishable only when:

1. the object is narrow
2. public evidence is listed
3. visible behavior is separated from missing behavior
4. reconstructibility findings are evidence-bound
5. unresolved branches remain visible
6. public narrative does not overclaim