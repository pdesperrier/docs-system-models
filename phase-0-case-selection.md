# Phase 0, Portfolio Case Selection

## Canonical decision

| Role | Case | Folder | Status |
|---|---|---|---|
| Primary scoping case | Document360 API Workspace Behavior Model | `05_portfolio/cases/saas-document360-api-workspace-behavior-model/` | Active for Phase 0 scoping, not publishable yet |
| Fallback case | Cloudflare Secrets Store Behavior Model | `05_portfolio/cases/saas-cloudflare-secrets-store-behavior-model/` | More mature working scaffold, used if Document360 blocks |
| Later fallback | Qonto Role Permission Payment Behavior Model | `05_portfolio/cases/fintech-qonto-role-permission-payment-behavior-model/` | Outside the Phase 0 active flow |


## Selected primary scoping case

| Field | Value |
|---|---|
| Case | Document360 API Workspace Behavior Model |
| Local folder | `05_portfolio/cases/saas-document360-api-workspace-behavior-model/` |
| Role in Phase 0 | Primary scoping case |
| Publication status | Not publishable yet |
| Reason for selection | Strong connection between knowledge base structure, API workspace behavior, AI-ready documentation, and acquisition conversation |
| Acquisition bridge | Daniel Andrew thread, Document360 context, knowledge management, and AI-assisted documentation structure |
| Content bridge | Documenting Dependencies, AI-ready documentation, Documentation Friction Audit |

## Selected fallback case

| Field | Value |
|---|---|
| Case | Cloudflare Secrets Store Behavior Model |
| Local folder | `05_portfolio/cases/saas-cloudflare-secrets-store-behavior-model/` |
| Role in Phase 0 | Fallback case |
| Publication status | More mature working scaffold, not final public case |
| Reason for selection | Existing case structure, clear runtime behavior, role-based access, Workers bindings, BYOK, and dependency boundaries |
| Acquisition bridge | SaaS infrastructure, API governance, developer documentation, runtime behavior |
| Content bridge | Dependency visibility, workflow interpretability, system interpretability |

## Later fallback

| Field | Value |
|---|---|
| Case | Qonto Role Permission Payment Behavior Model |
| Local folder | `05_portfolio/cases/fintech-qonto-role-permission-payment-behavior-model/` |
| Role in Phase 0 | Later fallback |
| Publication status | Outside active flow |
| Reason for demotion | Useful case, but no longer the immediate fallback for Phase 0 |
| Activation condition | Use only if both Document360 and Cloudflare fail to produce usable public proof |

## Case proof criteria

| Criterion | Document360 | Cloudflare | Qonto |
|---|---|---|---|
| Observable behavior | Required | Required | Required if activated later |
| Public source | Required | Required | Required if activated later |
| Localized friction | Required | Required | Required if activated later |
| Reconstruction effort | Required | Required | Required if activated later |
| Dependency visibility | Required | Required | Required if activated later |
| Reusable artifact | Required | Required | Required if activated later |

## Activation rule

Document360 remains the primary scoping case unless it fails one of these checks:

- no sufficiently local behavior can be isolated
- public documentation is too thin for visible proof
- acquisition bridge becomes too commercial or too vague
- case cannot produce a reusable artifact within two weeks

Cloudflare becomes the active case only if Document360 fails one of these checks.

Qonto remains outside the Phase 0 active flow unless both Document360 and Cloudflare fail.
