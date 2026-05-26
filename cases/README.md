# Portfolio Cases

This directory contains portfolio-safe case folders for behavioral documentation and reconstructibility analysis.

The folders are not raw audit repositories.

They contain sanitized case material, candidate evidence, findings, public-safe narratives, and backlog scaffolds.

## Canonical Phase 0 case decision

| Role | Case | Folder | Status |
|---|---|---|---|
| Primary scoping case | Document360 API Workspace Behavior Model | `05_portfolio/cases/saas-document360-api-workspace-behavior-model/` | Active for Phase 0 scoping, not publishable yet |
| Fallback case | Cloudflare Secrets Store Behavior Model | `05_portfolio/cases/saas-cloudflare-secrets-store-behavior-model/` | More mature working scaffold, used if Document360 blocks |
| Later fallback | Qonto Role Permission Payment Behavior Model | `05_portfolio/cases/fintech-qonto-role-permission-payment-behavior-model/` | Outside the Phase 0 active flow |


## Status categories

| Status | Meaning |
|---|---|
| Primary scoping case | Current case used to test whether a visible portfolio proof can be produced during Phase 0. |
| Fallback case | Secondary case kept available if the primary scoping case blocks. |
| Later fallback | Case kept outside the Phase 0 active flow, used only if both the primary scoping case and fallback case fail. |
| Warm backlog skeleton | Candidate case likely useful soon, but not part of Phase 0 execution. |
| Cold backlog skeleton | Candidate case kept for later positioning or evidence exploration. |

## Current case inventory

| Case | Status | Use |
|---|---|---|
| `saas-document360-api-workspace-behavior-model` | Primary scoping case | Use first for Phase 0 proof selection. Not publishable yet. |
| `saas-cloudflare-secrets-store-behavior-model` | Fallback case | Use if Document360 does not produce enough validated evidence within the Phase 0 proof criteria. |
| `fintech-qonto-role-permission-payment-behavior-model` | Later fallback | Keep outside the Phase 0 active flow. Use only if Document360 and Cloudflare both block. |
| `saas-shopify-customer-account-auth-behavior-model` | Warm backlog skeleton | Keep for later proof exploration. |
| `saas-mistral-ai-developer-workflow-behavior-model` | Warm backlog skeleton | Keep for later proof exploration. |
| `saas-atlassian-extension-runtime-behavior-model` | Cold backlog skeleton | Keep for later positioning or evidence exploration. |

## Operating rule

A case can be the primary scoping case without being publishable.

Document360 is currently selected for scoping because it connects API workspace behavior, knowledge architecture, AI-ready documentation, and acquisition context. It must not be presented as a finished portfolio case until evidence has been validated and reduced into a public-safe narrative.

Cloudflare is more mature as a folder, but it is not the current primary scoping case.

Qonto is no longer the immediate fallback. It is a later fallback outside Phase 0 execution.
