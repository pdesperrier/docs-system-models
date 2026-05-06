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
| [PaymentBehaviorModel — Payment Validation](cases/payment-behavior-model/README.md) | Payment validation workflows | Roles, approval rules, statuses, and webhooks are documented separately |
| [Cloudflare — Secrets Store Behavior Model](cases/cloudflare-secrets-store-behavior-model/README.md) | Secrets lifecycle, bindings, BYOK, and access control | Access behavior depends on role, scope, environment, bindings, and downstream integrations |
| [Shopify — Customer Account Authentication Behavior Model](cases/shopify-customer-account-auth-behavior-model/README.md) | OAuth, endpoint discovery, token exchange, GraphQL responses, and rate limits | Authentication and request behavior are distributed across multiple flows |
| [Atlassian — Extension Runtime Behavior Model](cases/atlassian-extension-runtime-behavior-model/README.md) | Extension runtime, permissions, rendering constraints, deployment flow, and environment behavior | Extension behavior depends on runtime context, extension target, permissions, deployment state, and rendering limitations |

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
  payment-behavior-model/
  cloudflare-secrets-store-behavior-model/
  shopify-customer-account-auth-behavior-model/
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
