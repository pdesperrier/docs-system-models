# Cloudflare — Secrets Store Documentation Recommendations

## Main recommendation

Add a central page or section:

```text
Secrets Store behavior model
```

The goal is not to duplicate existing procedure pages.

The goal is to connect role, permission, secret lifecycle, integration, environment, and runtime behavior.

## Recommendation 1 — Add an actor / action matrix

Create a table that answers:

- who can create or edit a secret?
- who can bind a secret to a Worker?
- who can associate it with AI Gateway?
- who can only view metadata?
- who can access decrypted values?

This reduces confusion between:

- secret management
- secret deployment
- metadata visibility
- runtime access

## Recommendation 2 — Separate human access from runtime access

Make this distinction explicit:

```text
human user → can view metadata depending on role
service runtime → can access associated secret value through binding or gateway behavior
```

This prevents users from confusing metadata visibility with secret value access.

## Recommendation 3 — Add a Worker binding behavior model

Current procedural steps can be strengthened with a flow:

```text
create account secret
→ bind secret to Worker
→ deploy binding / save version
→ Worker calls binding.get()
→ application uses secret at runtime
```

Add a companion note:

```text
production secrets are not available in local development; local mode requires non-remote secrets
```

## Recommendation 4 — Add an AI Gateway BYOK behavior model

Document BYOK as a before/after behavior change:

Before:

```text
application sends provider Authorization header on each request
```

After:

```text
provider key is configured once in Cloudflare dashboard
application keeps cf-aig-authorization
application removes provider Authorization header
optional cf-aig-byok-alias selects key
```

## Recommendation 5 — Add deletion and rotation impact table

Create a table showing operational consequences:

| Action | Immediate effect | Risk |
|---|---|---|
| Rotate provider key | applications use new key without code change | wrong key if alias not checked |
| Delete provider key | dependent requests stop immediately | outage if no alternative key exists |
| Edit account secret | services using the secret receive replacement | broad runtime impact |
| Delete account secret | bound services may fail | deployment/runtime failure |

## Recommendation 6 — Link API token permissions to task outcomes

API token permissions should be linked to user tasks, not only listed as permission names.

Suggested structure:

| Task | Required role or API token permission | Notes |
|---|---|---|
| Create secret | Super Administrator / Secrets Store Admin / Account Secrets Store Edit | value hidden after save |
| View metadata | Reporter / Deployer / Admin / Super Admin / Account Secrets Store Read | metadata only |
| Bind secret to Worker | Super Administrator / Secrets Store Deployer | deployment behavior |
| Associate secret with AI Gateway | Super Administrator / Secrets Store Deployer | BYOK behavior |

## Recommendation 7 — Add scenario-based examples

Suggested scenarios:

1. Security admin creates an account secret for Workers.
2. Deployer binds an existing secret to a Worker.
3. Developer tries to use production secret locally.
4. AI Gateway request uses the default BYOK alias.
5. AI Gateway request uses a production alias.
6. Provider key is deleted and dependent requests fail.

## Priority order

| Priority | Action |
|---|---|
| High | Add actor/action matrix |
| High | Add Worker binding behavior model |
| High | Add AI Gateway BYOK before/after model |
| Medium | Add local vs production behavior note |
| Medium | Add deletion/rotation impact table |
| Medium | Link API token permissions to tasks |
| Low | Add troubleshooting examples |

## Expected value

These changes would help users predict:

- what they are allowed to do
- what the system will allow at runtime
- when local and production behavior diverge
- how BYOK changes request behavior
- which actions can break dependent services
