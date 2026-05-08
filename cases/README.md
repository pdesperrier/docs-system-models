# Cases

Each case demonstrates:

- a documentation friction
- a behavior model
- a documentation transformation

## Case index

| Case | Type | Focus | Read |
|---|---|---|---|
| PaymentBehaviorModel — Payment Validation | Fictional case study | Payment validation, roles, approval rules, statuses, webhooks | [Open case](payment-behavior-model/README.md) |
| Cloudflare — Secrets Store Behavior Model | Concrete documentation analysis | Secrets Store, Workers bindings, role-based access, BYOK, runtime behavior | [Open case](cloudflare-secrets-store-behavior-model/README.md) |
| Shopify — Customer Account Authentication Behavior Model | Concrete documentation analysis | Customer Account API, OAuth, endpoint discovery, token exchange, GraphQL errors, rate limits | [Open case](shopify-customer-account-auth-behavior-model/README.md) |
| Atlassian — Extension Runtime Behavior Model | Concrete documentation analysis | Extension runtime, permissions, deployment flow, rendering constraints, and environment behavior | [Open case](atlassian-extension-runtime-behavior-model/README.md) |
| Doctolib — Connector Synchronization Behavior Model | Concrete documentation analysis | Connector synchronization, patient ownership, duplicate handling, runtime activation, and external identifiers | [Open case](doctolib-connector-behavior-model/README.md)|
| Qonto — Role, Permission, and Payment Behavior Model | Concrete documentation analysis | Role-based access, approval workflows, SCA/2FA, direct debit mandates, payment eligibility, permission scopes | [Open case](qonto-role-permission-payment-behavior-model/README.md) |
| Document360 — API Workspace and Content Lifecycle Behavior Model | Concrete documentation analysis | API workspaces, OpenAPI import, CI/CD resync, Try It behavior, editor switching, Drive dependencies, analytics, access behavior | [Open case](document360-api-workspace-behavior-model/README.md) |
| Mistral AI — Developer Workflow and Runtime Behavior Model | Concrete documentation analysis | API keys, workspaces, tool calling, RAG, file lifecycle, retry strategy, rate limits, runtime dependencies | [Open case](mistral-ai-developer-workflow-behavior-model/README.md) |

---

## PaymentBehaviorModel — Payment Validation

Fictional case study focused on API payment validation workflows.

### Core friction

Roles, approval rules, statuses, and webhook events are documented separately.

The combined payment behavior remains implicit.

### Behavior model

```text
role + amount + approval rule
→ status
→ webhook
→ next action
```

### Key outputs

- behavior matrix
- role/action model
- state transition mapping
- before/after documentation structure
- workflow prediction model

[Read the case](payment-behavior-model/README.md)

---

## Cloudflare — Secrets Store Behavior Model

Concrete documentation analysis focused on Cloudflare Secrets Store, Workers bindings, role-based access, AI Gateway BYOK workflows, and runtime configuration behavior.

### Core friction

Secrets Store documentation explains account secrets, roles, permissions, Workers bindings, local vs remote secrets, BYOK integration, and key aliases separately.

The combined operational behavior remains fragmented across multiple pages and workflows.

### Behavior model

```text
role + environment + secret scope + binding
→ access capability
→ runtime behavior
→ downstream dependency
→ operational impact
```

### Key outputs

- access-control behavior matrix
- role/action model
- local vs remote environment mapping
- secret lifecycle model
- binding dependency map
- before/after documentation structure

[Read the case](cloudflare-secrets-store-behavior-model/README.md)

---

## Shopify — Customer Account Authentication Behavior Model

Concrete documentation analysis focused on Shopify Customer Account API authentication, endpoint discovery, OAuth client types, token exchange, GraphQL response behavior, and rate-limit handling.

### Core friction

The documentation explains discovery endpoints, authorization, PKCE, token exchange, refresh tokens, GraphQL endpoint discovery, status codes, and rate limits in separate sections.

The combined authentication and request behavior remains distributed across the flow.

### Behavior model

```text
client type + discovery endpoint + auth parameters
→ token exchange outcome
→ API endpoint selection
→ response pattern
→ next action
```

### Key outputs

- authentication behavior matrix
- client-type decision model
- discovery endpoint map
- token-error troubleshooting matrix
- GraphQL response model
- before/after documentation structure

[Read the case](shopify-customer-account-auth-behavior-model/README.md)

---

## Atlassian — Extension Runtime Behavior Model

Concrete documentation analysis focused on extension runtime behavior, deployment workflows, rendering constraints, authentication context, and environment-dependent execution logic.

### Core friction

The documentation explains extension targets, rendering environments, deployment workflows, authentication contexts, permissions, runtime APIs, and UI limitations separately.

The combined operational behavior remains fragmented across platform, extension, runtime, and deployment documentation.

### Behavior model

```text
extension type + runtime context + permission scope + deployment state
→ rendering capability
→ API access
→ lifecycle behavior
→ operational constraints
```

### Key outputs

- runtime behavior matrix
- extension target dependency map
- deployment-state transition model
- permission and scope matrix
- rendering constraint analysis
- before/after documentation structure

[Read the case](atlassian-extension-runtime-behavior-model/README.md)

---

## Doctolib — Connector Synchronization Behavior Model

Concrete documentation analysis focused on synchronization behavior, patient ownership constraints, connector activation, external identifiers, duplicate handling, and runtime dependencies.

### Core friction

The documentation explains synchronization, ownership constraints, connector runtime behavior, external identifiers, duplicate handling, and troubleshooting separately.

The combined operational behavior remains fragmented across multiple workflows and support articles.

### Behavior model

```text
connector type + synchronization direction + ownership authority + runtime activation
→ synchronization behavior
→ modification capability
→ duplicate handling
→ troubleshooting outcome
```

### Key outputs

- synchronization behavior matrix
- ownership authority model
- connector activation dependency map
- duplicate-resolution workflow
- runtime activation model
- synchronization direction mapping
- before/after documentation structure
- troubleshooting dependency model

---

## Qonto — Role, Permission, and Payment Behavior Model

Concrete documentation analysis focused on role-based access, payment approvals, SCA/2FA dependencies, direct debit mandate lifecycle, and operational eligibility.

### Core friction

Role, permission, authentication, direct debit, and approval behavior are documented separately.

The combined operational model remains implicit.

### Behavior model

```text
role + permission scope + authentication state + payment workflow
→ allowed action
→ validation path
→ operational outcome
```

### Key outputs

- role/action behavior matrix
- permission-scope model
- payment approval workflow map
- SCA/2FA dependency model
- direct debit mandate lifecycle
- eligibility and refund-state model
- before/after documentation structure

[Read the case](qonto-role-permission-payment-behavior-model/README.md)

---

## Document360 — API Workspace and Content Lifecycle Behavior Model

Concrete documentation analysis focused on API documentation workspaces, OpenAPI import and resync, Try It availability, editor switching, Drive dependencies, analytics, and reader access behavior.

### Core friction

API documentation, editor choices, workspace access, Drive assets, analytics, feedback, and publication behavior are documented separately.

The combined lifecycle remains distributed.

### Behavior model

```text
workspace + content type + editor state + access setting + import method
→ publication behavior
→ reader/developer outcome
```

### Key outputs

- API workspace lifecycle matrix
- OpenAPI import/resync behavior model
- Try It availability dependency map
- editor switching state model
- Drive file dependency risk model
- analytics scope model
- before/after documentation structure

[Read the case](document360-api-workspace-behavior-model/README.md)

---

## Mistral AI — Developer Workflow and Runtime Behavior Model

Concrete documentation analysis focused on API keys, workspaces, chat completions, tool calling, RAG, file lifecycle, error handling, retry behavior, and usage limits.

### Core friction

Quickstarts, API reference, agents, RAG, files, workspaces, billing, errors, rate limits, and deployment options are documented across separate areas.

Developers must reconstruct the runtime path.

### Behavior model

```text
workspace + API key + model endpoint + tool/RAG/file configuration + limit state
→ runtime behavior
→ error/retry path
```

### Key outputs

- developer runtime behavior matrix
- tool-calling loop model
- RAG document lifecycle model
- API key/workspace dependency map
- file lifecycle model
- error and retry path model
- rate-limit and billing-state model
- before/after documentation structure

[Read the case](mistral-ai-developer-workflow-behavior-model/README.md)
