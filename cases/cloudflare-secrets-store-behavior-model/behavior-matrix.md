# Cloudflare — Secrets Store Behavior Matrix

## Purpose

Make Secrets Store behavior explicit across actors, permissions, integrations, environments, and runtime outcomes.

## Core model

```text
actor + permission + secret state + integration + environment
→ allowed action + runtime behavior + next action
```

## Actor / action matrix

| Actor or permission | Create / edit / delete secret | View secret metadata | Bind secret to Worker | Associate secret with AI Gateway | Access decrypted secret value | Notes |
|---|---|---|---|---|---|---|
| Super Administrator | Yes | Yes | Yes | Yes | No direct access after save | Broad administrative role. |
| Secrets Store Admin | Yes | Yes | No / not stated for binding | No / not stated for AI Gateway association | No direct access after save | Can manage secrets, but deployment behavior is separate. |
| Secrets Store Deployer | No | Yes | Yes | Yes | No direct access after save | Can deploy or associate existing secrets, but cannot create or edit them. |
| Secrets Store Reporter | No | Yes | No | No | No | Read-only metadata role. |
| Account Secrets Store Edit API token | Yes | Not the main documented emphasis | Not sufficient by itself for binding | Not sufficient by itself for association | No | API token permission for secret management. |
| Account Secrets Store Read API token | No | Yes | No | No | No | Metadata visibility only. |

## Secret lifecycle matrix

| Action | Required actor / permission | Resulting behavior | Documentation risk if isolated |
|---|---|---|---|
| Create account secret | Super Administrator, Secrets Store Admin, or edit permission | Secret is stored at account level. Value cannot be viewed after save. | User may miss the one-way visibility behavior. |
| Duplicate secret | Management role / permission | Same secret value can be reused with changed name, scope, or comment. | User may not see how duplication affects downstream bindings. |
| Edit secret | Management role / permission | Secret value can be replaced. Replacement affects services using it. | Operational blast radius may be underemphasized. |
| Delete secret | Management role / permission | Requests depending on the deleted key or secret can fail. | Deletion risk may be separated from integration behavior. |
| View metadata | Reporter / Deployer / Admin / Super Admin / read permission | Metadata visible, value not decrypted. | Users may confuse metadata visibility with secret value access. |

## Workers integration matrix

| Step | Actor / permission | Environment | Behavior | Gap to make explicit |
|---|---|---|---|---|
| Create or identify store | Super Administrator or Secrets Store Admin | Production / remote | First store may be created automatically when a permitted user interacts with Secrets Store; CLI can create a store with `--remote`. | Relationship between store existence, account role, and setup path. |
| Create production secret | Super Administrator or Secrets Store Admin | Production / remote | Secret counts toward production account limit. | Local vs production distinction. |
| Bind account secret to Worker | Super Administrator or Secrets Store Deployer | Production | Binding references store ID and secret name. | Management role and deployment role are different. |
| Access secret in Worker | Worker runtime through binding | Production | Worker calls `get()` on the binding variable. | Human actor cannot directly decrypt; service runtime accesses the secret. |
| Use local development secret | Developer using Wrangler local mode | Local | Must use secrets-store commands without `--remote`. | Production secrets are not available locally. |

## AI Gateway BYOK matrix

| Scenario | Configuration | Request behavior | Risk if not modeled |
|---|---|---|---|
| Traditional request | Provider API key sent in provider authorization header | Application exposes provider key in request path. | User may continue sending unnecessary provider key. |
| BYOK request | Provider key configured once in Cloudflare dashboard | Request omits provider authorization header but keeps `cf-aig-authorization`. | User may remove the wrong header. |
| Multiple keys | Several keys configured for one provider | Default alias is used unless `cf-aig-byok-alias` is provided. | User may not understand which key is selected. |
| Alias-specific request | `cf-aig-byok-alias` header provided | Gateway uses the key matching that alias. | Missing behavior model can cause incorrect environment selection. |
| Key rotation | Existing key replaced in dashboard | Applications use new key without code changes. | Runtime behavior after rotation may be inferred. |
| Key deletion | Key removed in dashboard | Requests depending on it stop immediately. | Operational failure mode should be linked to request behavior. |

## Critical gaps

1. Role capabilities and integration behavior are documented separately.
2. Secret lifecycle actions are not shown in one operational model.
3. Workers production/local behavior requires cross-section reconstruction.
4. BYOK request behavior is not modeled together with key alias and deletion behavior.
5. Human access, metadata visibility, runtime access, and integration access need explicit separation.

## Recommended behavior page

```text
Secrets Store behavior model
```

Recommended sections:

1. What account-level secrets are
2. Who can manage, deploy, or view them
3. What cannot be decrypted after save
4. How Workers bindings use account secrets
5. How local mode differs from production
6. How AI Gateway BYOK uses configured provider keys
7. How aliases select keys
8. What deletion or rotation changes at runtime
