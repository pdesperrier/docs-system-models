# Documentation System Models

This repository explores how documentation architecture can make complex system behavior explicit.

It focuses on situations where documentation explains individual elements clearly, but users still have to reconstruct how those elements interact across workflows, permissions, states, events, and API behavior.

## Focus areas

- API workflows
- permissions and roles
- lifecycle states
- authentication flows
- operational dependencies
- event-driven behavior
- developer onboarding
- support knowledge alignment

## Core model

```text
condition + role + state + action
→ outcome + event + next action
```

## Cases

| Case | Focus | Core friction |
|---|---|---|
| [PaymentBehaviorModel — Payment Validation](cases/fintech-paymentbehaviormodel-payment-behavior-model/README.md) | Payment validation workflows | Roles, approval rules, statuses, and webhooks are documented separately |
| [Cloudflare — Secrets Store Behavior Model](cases/saas-cloudflare-secrets-store-behavior-model/README.md) | Secrets lifecycle, bindings, BYOK, and access control | Access behavior depends on role, scope, environment, bindings, and downstream integrations |
| [Shopify — Customer Account Authentication Behavior Model](cases/saas-shopify-customer-account-auth-behavior-model/README.md) | OAuth, endpoint discovery, token exchange, GraphQL responses, and rate limits | Authentication and request behavior are distributed across multiple flows |
| [Atlassian — Extension Runtime Behavior Model](cases/saas-atlassian-extension-runtime-behavior-model/README.md) | Extension runtime, permissions, rendering constraints, deployment flow, and environment behavior | Extension behavior depends on runtime context, extension target, permissions, deployment state, and rendering limitations |
| [Doctolib — Connector Synchronization Behavior Model](cases/saas-doctolib-connector-behavior-model/README.md) | Connector synchronization, patient ownership, external identifiers, runtime activation, and duplicate handling | Synchronization behavior depends on connector state, ownership authority, external identifiers, and runtime activation rules |
| [Qonto — Role, Permission, and Payment Behavior Model](cases/fintech-qonto-role-permission-payment-behavior-model/README.md) | Role-based access, approval workflows, SCA, direct debit mandates, and payment eligibility | Payment and access behavior depends on role, permission scope, authentication state, mandate status, and approval rules |
| [Document360 — API Workspace and Content Lifecycle Behavior Model](cases/saas-document360-api-workspace-behavior-model/README.md) | API workspaces, OpenAPI import, Try It, editor switching, Drive dependencies, analytics, and access behavior | Content and API behavior depends on workspace, editor state, import method, access settings, and dependency state |
| [Mistral AI — Developer Workflow and Runtime Behavior Model](cases/saas-mistral-ai-developer-workflow-behavior-model/README.md) | API keys, workspaces, tool calling, RAG, files, errors, retry behavior, and usage limits | Runtime behavior depends on workspace, billing, API key, endpoint configuration, file state, and rate-limit conditions |

## Method

Each case follows the same structure:

1. Detect a documentation friction
2. Identify implicit relationships
3. Build a behavior model
4. Restructure the documentation flow
5. Reduce user inference

## Repository structure

```text
README.md
about.md
cases/
  README.md
  fintech-paymentbehaviormodel-payment-behavior-model/
  saas-cloudflare-secrets-store-behavior-model/
  saas-shopify-customer-account-auth-behavior-model/
methods/
  behavior-model.md
  documentation-architecture.md
offers/
  documentation-friction-audit.md
  workflow-rewrite.md
  documentation-architecture-sprint.md
LICENSE
```

## Useful for

- documentation architecture
- API documentation
- developer onboarding
- product documentation
- support knowledge alignment
- docs-as-code portfolio review

## Contact context

This portfolio is designed for:

- Heads of Documentation
- Developer Experience leaders
- Product leaders
- Engineering managers
- freelance or contract buyers

## Positioning

This is not a writing portfolio.

It is a system-level approach to documentation:

```text
friction → behavior model → documentation transformation
```
