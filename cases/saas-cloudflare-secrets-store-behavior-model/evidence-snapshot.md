# Evidence Snapshot: Cloudflare Secrets Store Behavior Model

This file contains a portfolio-safe snapshot of visible evidence.

It is not a full evidence registry.

## Scope

How Cloudflare Secrets Store permissions determine whether an account secret can be created, bound to a Worker, and accessed at runtime.

## Source list

| Source | URL | Surface | Evidence class | Why it matters |
|---|---|---|---|---|
| Cloudflare Secrets Store overview | https://developers.cloudflare.com/secrets-store/ | Product documentation | MEDIUM | Establishes Secrets Store as an account-level secret storage mechanism. |
| Secrets Store access control | https://developers.cloudflare.com/secrets-store/access-control/ | Role documentation | STRONG | Defines which roles can create, edit, view, bind, or only report on secrets. |
| Manage account secrets | https://developers.cloudflare.com/secrets-store/manage-secrets/how-to/ | Procedural workflow | STRONG | Defines creation, duplication, edition, deletion, visibility limits, and service access. |
| Workers integration | https://developers.cloudflare.com/secrets-store/integrations/workers/ | Procedural workflow | STRONG | Defines the sequence from account secret creation to Worker binding and runtime access. |
| Audit logs | https://developers.cloudflare.com/secrets-store/audit-logs/ | Observability documentation | MEDIUM | Defines which Secrets Store changes are logged. |

## Evidence summary

| Evidence ref | Evidence class | Scope | Public-safe wording | Notes |
|---|---|---|---|---|
| E-REF-001 | MEDIUM | Account-level secret storage | Secrets Store stores secrets centrally at account level and makes them reusable across compatible Cloudflare services. | Establishes the object boundary. |
| E-REF-002 | STRONG | Role boundary | Super Administrator can manage secrets and add a Secrets Store binding to a Worker. | Combines secret management and Worker binding rights. |
| E-REF-003 | STRONG | Role boundary | Secrets Store Admin can manage secrets but is not documented as being able to add a Worker binding. | Important permission split. |
| E-REF-004 | STRONG | Role boundary | Secrets Store Deployer can view secret metadata and add a Secrets Store binding to a Worker, but cannot create, edit, duplicate, or delete secrets. | Important operational split between secret creation and deployment. |
| E-REF-005 | STRONG | Role boundary | Secrets Store Reporter can view metadata but cannot perform actions or use Secrets Store integrations. | Defines read-only boundary. |
| E-REF-006 | STRONG | Secret creation workflow | Creating account secrets requires Super Administrator or Secrets Store Admin. | Creation and binding are separate behaviors. |
| E-REF-007 | STRONG | Worker binding workflow | Binding an account secret to a Worker requires Super Administrator or Secrets Store Deployer. | Binding permission differs from creation permission. |
| E-REF-008 | STRONG | Runtime access | A bound secret is accessed on the Worker `env` object through an asynchronous `get()` call. | Runtime use depends on prior binding. |
| E-REF-009 | STRONG | Local vs production behavior | Production secrets created remotely are not accessible from local development. | Environment boundary affects behavior. |
| E-REF-010 | MEDIUM | Observability | Audit logs document access, create, update, and delete actions for Secrets Store. | Observability exists for secret operations, but binding traceability requires separate verification. |
| E-REF-011 | STRONG | Secret value visibility | Once saved, the secret value is no longer available for viewing. | Affects recovery, debugging, and support behavior. |
| E-REF-012 | MEDIUM | Secret edition impact | Editing a secret replaces the existing value in all services using that secret. | Exposes a cross-service dependency. |

## Visible behaviors

| Object | Visible behavior | Evidence refs | Reconstruction note |
|---|---|---|---|
| Account secret | Exists as an account-level secret, separate from per-Worker secrets. | E-REF-001 | The reader must distinguish account-level secret reuse from per-Worker secret management. |
| Secret value | Once saved, the value can no longer be viewed through dashboard or API. | E-REF-006, E-REF-011 | The value visibility rule affects operational recovery and debugging. |
| Super Administrator | Can create and manage secrets and bind them to Workers. | E-REF-002 | This role covers both creation and deployment. |
| Secrets Store Admin | Can manage secrets but is not documented as a Worker binding role. | E-REF-003 | Creation rights do not imply deployment rights. |
| Secrets Store Deployer | Can bind secrets to Workers without being able to create or edit them. | E-REF-004 | Deployment rights do not imply secret management rights. |
| Secrets Store Reporter | Can view metadata but cannot use integrations. | E-REF-005 | Read access does not imply operational use. |
| Worker binding | Makes the account secret available to the Worker through a binding variable. | E-REF-007, E-REF-008 | Runtime access depends on configuration. |
| Runtime secret access | Uses `env.<BINDING_VARIABLE>.get()` asynchronously. | E-REF-008 | The runtime behavior is documented as code-level access, not only as configuration. |
| Local development | Cannot access production secrets created remotely. | E-REF-009 | Environment changes the available behavior. |
| Audit logs | Log access, create, update, and delete actions. | E-REF-010 | Logged actions do not yet prove full binding traceability. |
| Secret update | Editing a secret can affect all services using that secret. | E-REF-012 | The dependency extends beyond the immediate edit action. |

## Missing or implicit behaviors

| Missing or implicit behavior | Why it matters | Reconstruction effort |
|---|---|---|
| Exact failure behavior when Secrets Store Admin tries to bind a secret to a Worker. | The role can manage secrets, but binding rights are documented elsewhere. | High |
| Exact failure behavior when Secrets Store Deployer tries to create or edit a secret. | The role can deploy bindings but cannot manage secret values. | Medium |
| Whether audit logs expose Worker binding changes with enough detail for operational traceability. | Audit logs list core secret operations, but binding traceability is not yet proven. | High |
| Whether dashboard-created bindings and Wrangler-created bindings produce identical runtime behavior. | The same end state may be reached through different surfaces. | Medium |
| Whether missing, deleted, renamed, or scope-mismatched secrets produce documented runtime errors. | Runtime failure semantics are necessary for support and debugging. | High |
| Whether role-based UI visibility matches API token permission behavior. | Human roles and token permissions may expose different operational models. | High |
| Whether editing a secret creates immediate runtime impact for every bound Worker or follows a delayed propagation model. | The documentation warns about service-wide replacement but does not fully expose propagation behavior. | High |

## Behavioral documentation relevance

This case exposes a narrow but useful reconstruction problem.

The documented behavior is distributed across role definitions, secret management workflows, Worker binding steps, runtime access, local development limits, and audit logs.

The primary documentation friction is not missing content.

The friction is dependency visibility: the reader must reconstruct which role can create a secret, which role can bind it, which runtime surface can access it, which environments can use it, and which actions are observable afterward.

## Evidence class guidance

- STRONG: API contracts, role tables, explicit permissions, explicit errors, procedural workflows
- MEDIUM: UI walkthroughs, SDK examples, support documentation, audit documentation
- WEAK: FAQ, screenshots, snippets
- VERY WEAK: marketing, onboarding summaries

## Forbidden

Do not include:

- raw proprietary material
- unvalidated interpretations
- speculative transitions
- non-public internal notes

## Boundary

This snapshot records visible evidence only.

It does not infer undocumented behavior.

Unverified runtime errors, audit coverage, UI/API divergence, propagation behavior, and permission inheritance must remain marked as missing or implicit behavior.
