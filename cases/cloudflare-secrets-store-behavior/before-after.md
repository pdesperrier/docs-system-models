# Cloudflare — Secrets Store Documentation Before / After

## Context

Cloudflare Secrets Store documentation covers account-level secrets, access control, secret management, Workers bindings, and AI Gateway BYOK.

The documentation pieces are useful individually.

The opportunity is to make the cross-product behavior easier to reason about.

# BEFORE

## Current documentation pattern

The excerpt presents several documentation areas:

### Secrets Store overview

Explains:

- Secrets Store securely stores account-level secrets
- secrets are encrypted and stored across Cloudflare data centers
- Secrets Store is currently compatible with Workers and AI Gateway
- additional integrations may come later

### Access control

Explains:

- Super Administrator
- Secrets Store Admin
- Secrets Store Deployer
- Secrets Store Reporter
- API token permissions for read and edit

### Manage account secrets

Explains:

- create
- duplicate
- edit
- delete
- secret value no longer visible after save
- production secret limits

### Workers integration

Explains:

- create or identify an account secret
- bind a secret to a Worker
- access the secret through the `env` object
- local development behavior differs from production

### AI Gateway BYOK

Explains:

- provider keys can be stored in Cloudflare dashboard
- applications can remove provider authorization headers
- `cf-aig-authorization` is still required
- aliases can select different configured keys
- key deletion stops dependent requests

## Problem

The sections explain their own local task.

But the combined operating model is not centralized.

A user must reconstruct:

```text
role + permission + secret state + integration + environment
→ allowed operation + runtime behavior + failure mode
```

## Consequences

The user may understand each section but still need to infer:

- whether a user can manage a secret or only deploy one
- whether metadata visibility means value access
- whether API token permissions are enough for Worker binding
- how production secrets differ from local development secrets
- which header to remove when BYOK is enabled
- which key is selected when multiple aliases exist
- what breaks after key deletion

# AFTER

## Proposed central page

```text
Secrets Store behavior model
```

## Target structure

1. Core model
2. Actor and permission behavior
3. Secret lifecycle behavior
4. Worker binding behavior
5. Runtime access behavior
6. Local vs production behavior
7. AI Gateway BYOK request behavior
8. Key aliases, rotation, and deletion

## Proposed section: Core model

```text
actor + permission + secret state + integration + environment
→ allowed action + runtime behavior + next action
```

## Proposed section: Actor and permission behavior

| Actor | Can manage secrets | Can deploy/bind secrets | Can view metadata | Can access decrypted value |
|---|---|---|---|---|
| Super Administrator | Yes | Yes | Yes | No direct access after save |
| Secrets Store Admin | Yes | Not the primary role | Yes | No direct access after save |
| Secrets Store Deployer | No | Yes | Yes | No direct access after save |
| Secrets Store Reporter | No | No | Yes | No |

## Proposed section: Worker integration behavior

```text
account secret created remotely
→ secret bound to Worker through configuration
→ Worker accesses binding asynchronously at runtime
→ local development requires local-mode secrets without --remote
```

## Proposed section: AI Gateway BYOK behavior

```text
provider key configured in dashboard
→ application removes provider Authorization header
→ application keeps cf-aig-authorization
→ optional alias selects a specific configured provider key
→ deletion stops requests depending on that key
```

## Key improvement

Before:

```text
access control, secret lifecycle, Workers integration, and AI Gateway BYOK are documented as separate tasks
```

After:

```text
roles + permissions + integration + environment + request behavior are connected in one operational model
```

## Outcome

The reader can predict behavior before performing changes.

This reduces:

- permission confusion
- deployment mistakes
- local/production mismatch
- BYOK header mistakes
- incorrect key alias use
- unexpected failures after deletion
