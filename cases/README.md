# Cases

Each case demonstrates:
- a documentation friction
- a behavior model
- a documentation transformation

---

## PaymentBehaviorModel — Payment Validation

Fictional case study focused on API payment validation workflows.

### Problem

Roles, approval rules, statuses, and webhook events are documented separately.

The combined payment behavior remains implicit.

### Core friction

A developer can understand each page independently but still cannot reliably predict:

- when approval is required
- which role can approve a payment
- which status is returned
- which webhook is emitted
- what action must happen next

### Documentation transformation

Before:

```text
roles
approval rules
statuses
webhooks
```

After:

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

### Files

```text
cases/payment-behavior-model/
    README.md
    behavior-matrix.md
    before-after.md
    concept-map.md
    recommendations.md
```

### Focus areas

- workflow predictability
- API lifecycle behavior
- approval logic
- event-driven documentation
- state transitions
- role-dependent behavior

### Read the case

[Read the case](payment-behavior-model/README.md)

---
## Cloudflare — Secrets Store Behavior Model

Documentation architecture case focused on Cloudflare Secrets Store, Workers bindings, role-based access, and AI Gateway BYOK workflows.

### Problem

Secrets Store documentation explains:

- account secrets
- roles and permissions
- Wrangler commands
- Workers bindings
- local vs remote secrets
- AI Gateway BYOK integration
- alias-based key selection

Each section is understandable independently.

The combined operational behavior remains fragmented across multiple pages and workflows.

### Core friction

A developer or platform engineer can understand each page separately but still cannot reliably predict:

- which role can perform which action
- when a secret is accessible locally vs remotely
- how Workers bindings relate to Secrets Store permissions
- how BYOK aliases affect runtime behavior
- which workflow breaks after secret deletion or rotation
- how role, scope, binding, and environment interact

### Documentation transformation

Before:

```text
roles
permissions
Wrangler commands
Workers bindings
BYOK setup
key aliases
```

After:

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

### Files

```text
cases/cloudflare-secrets-store-behavior-model/
    README.md
    behavior-matrix.md
    before-after.md
    concept-map.md
    recommendations.md
```

### Focus areas

- role-based behavior
- operational predictability
- environment-dependent behavior
- secret lifecycle
- binding dependencies
- AI Gateway BYOK workflows
- runtime configuration behavior

### Read the case

[Read the case](cases/cloudflare-secrets-store-behavior/README.md)