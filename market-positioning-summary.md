# Market Positioning Summary

## Market need

Complex SaaS teams do not only need clearer documentation.

They need documentation that makes product behavior, roles, states, exceptions, and cross-surface rules reconstructible.

The market need is operational understanding: reducing the reconstruction effort imposed on Product, Support, Engineering, Customer Education, and AI-assisted documentation workflows.

## Competitive families

1. Technical writing services focused on content production.
2. Documentation strategy services focused on content structure and governance.
3. Content operations and knowledge management services focused on reuse, tooling, and publishing workflows.
4. AI documentation services focused on drafting, retrieval, and automation.

## Differentiation

This portfolio demonstrates behavioral documentation.

It does not present documentation as wording, formatting, or content cleanup.

It focuses on dependency visibility: how roles, permissions, states, transitions, API behavior, support paths, and workflow surfaces interact.

## Canonical Phase 0 case alignment

| Role | Case | Folder | Status |
|---|---|---|---|
| Primary scoping case | Document360 API Workspace Behavior Model | `05_portfolio/cases/saas-document360-api-workspace-behavior-model/` | Active for Phase 0 scoping, not publishable yet |
| Fallback case | Cloudflare Secrets Store Behavior Model | `05_portfolio/cases/saas-cloudflare-secrets-store-behavior-model/` | More mature working scaffold, used if Document360 blocks |
| Later fallback | Qonto Role Permission Payment Behavior Model | `05_portfolio/cases/fintech-qonto-role-permission-payment-behavior-model/` | Outside the Phase 0 active flow |


## Current proof strategy

Document360 is the primary scoping case because it connects API workspace behavior, generated references, regeneration, warnings, interactive reference behavior, knowledge architecture, and AI-ready documentation.

Cloudflare is the fallback case because its folder is more mature and already exposes a narrow dependency problem across permissions, account secrets, Workers bindings, and runtime behavior.

Qonto is the later fallback because its role, permission, request visibility, and payment-request behavior remain useful, but the case should not compete with Document360 or Cloudflare during Phase 0.

## Positioning consequence

The current positioning should not say:

```text
Cloudflare is the primary case.
Qonto is the fallback case.
Document360 is the Phase 0 primary scoping case. It is not yet a publishable portfolio case.
```

The current positioning should say:

```text
Document360 is the primary scoping case.
Cloudflare is the fallback case.
Qonto is the later fallback outside the Phase 0 active flow.
```

## Offer connection

| Offer | Case support |
|---|---|
| Documentation Friction Audit | Supported by Document360 and Cloudflare |
| Behavioral Documentation Sprint | Supported after proof criteria are validated |
| Documentation Topology Assessment | Strongly supported by Document360 |
| Reconstructibility Audit Sprint | Strongly supported by Cloudflare and Qonto |
| Behavioral Debt Map | Supported by Qonto as later fallback |

## Publication boundary

Primary scoping status does not mean publishable status.

Document360 must remain unpublished until source validation, evidence cleanup, and public-safe narrative reduction are complete.
