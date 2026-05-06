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
