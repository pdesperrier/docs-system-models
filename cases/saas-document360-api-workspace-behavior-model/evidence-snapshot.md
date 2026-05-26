# Evidence Snapshot — SaaS Document360 API Workspace Behavior Model

This file contains a portfolio-safe snapshot of visible evidence.

It is not a full evidence registry.

## Scope

How Document360 turns an API specification file, URL, or CI/CD flow into an API reference and how warnings, regeneration, workspace separation, and interactive behavior affect documentation operations.

## Source list

| Source | URL | Surface | Evidence class | Why it matters |
|---|---|---|---|---|
| Getting started with API documentation | https://docs.document360.com/docs/api-documentation-getting-started | Product documentation | STRONG | Defines onboarding, API workspace separation, import options, supported formats, Try it behavior, and webhooks behavior. |
| Managing API documentation | https://docs.document360.com/docs/manage-api-documentation | Procedural workflow | STRONG | Defines generation methods, upload and URL workflows, warnings, regeneration, resync, custom content retention, and API reference download. |
| Document360 API Hub | https://apihub.document360.io/index.html | API reference surface | MEDIUM | Establishes the public API reference surface for Document360 APIs. |

## Evidence summary

| Evidence ref | Evidence class | Scope | Public-safe wording | Notes |
|---|---|---|---|---|
| E-REF-001 | STRONG | Workspace boundary | API documentation lives in a dedicated API workspace separate from the standard knowledge base. | Workspace separation affects routing, access control, and branding. |
| E-REF-002 | STRONG | Input methods | API references can be created by uploading a file, providing a URL, or using a CI/CD flow. | Multiple input paths produce a similar documentation object. |
| E-REF-003 | STRONG | Specification formats | Document360 supports OpenAPI 2.0, OpenAPI 3.0, OpenAPI 3.1, Postman collections, and JSON/YAML/YML inputs. | Specification format is a behavior boundary. |
| E-REF-004 | STRONG | Import warnings and errors | Alerts, warnings, and errors can appear during API reference generation. | Import state affects whether reference creation succeeds cleanly. |
| E-REF-005 | STRONG | Regeneration behavior | Regenerating API documentation reflects changes from the latest specification, and custom content is documented as retained. | Important dependency between source spec and generated reference. |
| E-REF-006 | MEDIUM | Interactive behavior | Try it allows endpoint testing in the knowledge base site, but is not available for webhooks. | Interactive capability differs by reference object type. |
| E-REF-007 | MEDIUM | API reference download | API references can be downloaded from the knowledge base site in a standard format. | Output behavior can affect documentation portability. |

## Visible behaviors

| Object | Visible behavior | Evidence refs | Reconstruction note |
|---|---|---|---|
| API workspace | API documentation is separated from the standard knowledge base. | E-REF-001 | Workspace boundary is reconstructible. |
| API reference creation | File, URL, and CI/CD flows are documented as creation paths. | E-REF-002 | Input paths must remain separate. |
| Specification support | Supported formats and versions are documented. | E-REF-003 | Format compatibility is visible. |
| Import state | Warnings and errors are surfaced during generation. | E-REF-004 | Failure or degraded import states are visible at high level. |
| Regeneration | Updated specs can regenerate API documentation, with custom content retained. | E-REF-005 | Resync behavior is reconstructible at workflow level. |
| Interactive testing | Try it supports endpoint testing but not webhook testing. | E-REF-006 | Interactive behavior differs by API object. |

## Missing or implicit behaviors

| Missing or implicit behavior | Why it matters | Reconstruction effort |
|---|---|---|
| Exact warning taxonomy and blocking vs non-blocking warning behavior. | Warnings affect operational confidence, but their severity model is not fully captured in the snapshot. | High |
| Exact conflict behavior when regenerated spec changes collide with custom content. | Custom content retention is stated, but merge semantics require validation. | High |
| Exact access control behavior between standard knowledge base and API workspace. | Workspace separation is visible, but permission mapping needs validation. | High |
| Exact behavior when CI/CD resync fails. | Automation behavior requires failure semantics. | Medium |
| Exact difference between generated endpoint articles and manually edited API content. | Generated and editorial surfaces may drift. | Medium |

## Behavioral documentation relevance

This case is useful because it separates documented behavior from behavior that still requires reconstruction.

The documentation friction is not treated as missing wording. It is treated as dependency visibility: the reader must reconstruct how the documented objects, roles, states, transitions, or workflows interact across surfaces.

## Evidence class guidance

- STRONG: API contracts, role tables, explicit permissions, explicit errors, procedural workflows
- MEDIUM: UI walkthroughs, SDK examples, support documentation, quickstarts, product documentation
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
