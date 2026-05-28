# Main friction

## Case

Case folder: `05_portfolio/cases/saas-document360-api-workspace-behavior-model/`

Source:

- S1: `source-excerpts/document360-managing-api-documentation.md`

Input artifacts:

- `source-log.md`
- `extraction-notes.md`
- `behavior-matrix.md`
- `dependency-map.md`

## Purpose

This file isolates the main behavioral friction of the Document360 API workspace case.

It does not rewrite the source documentation.

It does not propose improvements.

It does not complete missing workflows.

It identifies the primary friction that makes the documented behavior harder to reconstruct from S1 alone.

## Selected friction types

Primary friction:

- Reconstruction Effort

Secondary friction:

- Dependency Opacity

Related friction:

- Behavioral Ambiguity

## Main friction statement

S1 documents several local procedures for creating, publishing, regenerating, resyncing, downloading and testing API documentation, but it does not expose a complete operational model connecting those procedures.

A reader can follow individual instructions, but cannot fully reconstruct how an API reference behaves across source selection, generation, publish confirmation, draft state, regeneration, custom content retention, CI/CD key validity, download settings, webhook limitations, Try it routing and token-based permission errors.

The friction is not that the procedures are absent.

The friction is that the dependencies between states, actions, settings, roles and recovery paths remain partially hidden.

## Evidence basis

| Evidence ID | Source | Related extraction | Related matrix row | Related dependency | What is documented | What remains unconfirmed |
|---|---|---|---|---|---|---|
| MF-E1 | S1 | E1 | BM1 | D1 | API documentation can be generated from URL, JSON/YAML/YML file or CI/CD flow. | Who can use each generation method is not specified. |
| MF-E2 | S1 | E2, E3, E4 | BM2, BM3, BM4 | D2 | File upload leads to `New API reference`, publish confirmation, `Publish`, or `Close` into draft state. | Complete state lifecycle and role visibility are not specified. |
| MF-E3 | S1 | E5 | BM5 | D3 | URL-based generation uses the `URL` field, `Add API reference` and `Publish`. | URL validation, reachability failure and retry behavior are not specified. |
| MF-E4 | S1 | E6, E7 | BM6, BM7 | D4, D5 | CI/CD generation uses a copied command, updated `--path`, Node.js and API key validity. | Credential scope, role model and CLI failure behavior are not specified. |
| MF-E5 | S1 | E8, E9 | BM8, BM9 | D6, D7 | Webhooks are imported, shown with an event icon, included in resync, and custom content is retained after regeneration. | Webhook limitation surface, merge rules, conflict rules and rollback behavior are not specified. |
| MF-E6 | S1 | E10 | BM10 | D8 | Download depends on `Show download API reference` being turned on. | Behavior when the toggle is off and role boundary are not specified. |
| MF-E7 | S1 | E11, E12 | BM11, BM12 | D9, D10, D11 | `Try it & see response` routes through `tryit.document360.io`; missing POST token permission causes 403. | Try it permission model, security boundary, full error payload and remediation path are not specified. |

## Behavior documented locally

S1 provides strong local procedural documentation for these branches:

| Branch | Documented local behavior |
|---|---|
| File upload generation | A user can upload or select a JSON/YAML/YML API specification file, create a new API reference, reach publish confirmation and publish. |
| URL generation | A user can enter a URL for an API specification file, add an API reference and publish generated API documentation. |
| CI/CD generation | A user can select CI/CD Flow, copy a command, update `--path`, run it in a terminal and generate API documentation. |
| Publish / draft | Clicking `Publish` generates API documentation; clicking `Close` keeps generated articles in draft state. |
| Regeneration / resync | API documentation can be regenerated or resynced from updated specification sources. |
| Custom content retention | Custom content is retained during regeneration. |
| Webhooks | OpenAPI 3.1 webhooks are imported, displayed and included in resync operations; `Try it` is not available for webhooks. |
| Download | API references can be downloaded when the relevant portal setting is enabled. |
| Try it routing | Try it requests use `tryit.document360.io` as an internal routing subdomain. |
| 403 error | A 403 error occurs when the API token lacks the required POST permission. |

## Missing operational links

The documentation leaves several operational links unresolved.

| Missing link | Why it matters | Friction type |
|---|---|---|
| Role → action mapping | The reader cannot reconstruct who can create, publish, close, regenerate, resync, download or manage API keys. | Dependency Opacity |
| Source type → failure behavior | The reader cannot reconstruct what happens when file upload, URL import or CI/CD generation fails. | Reconstruction Effort |
| New API reference → full state lifecycle | The reader sees draft and publish behavior, but not the complete lifecycle across generated, draft, published, regenerated, resynced and downloaded states. | Behavioral Ambiguity |
| Alerts / warnings → decision effect | The reader sees that alerts and warnings can appear, but not whether they block, warn, inform or require correction. | Behavioral Ambiguity |
| Regeneration → custom content conflict behavior | The reader sees that custom content is retained, but cannot predict merge, overwrite, collision or rollback behavior. | Dependency Opacity |
| Portal toggle → disabled-state behavior | The reader sees that download depends on a setting, but not what happens when the setting is off. | Behavioral Ambiguity |
| Webhook → Try it limitation surface | The reader sees that Try it is unavailable for webhooks, but not where or how that limitation appears. | Reconstruction Effort |
| Try it routing → security and failure model | The reader sees the `tryit.document360.io` prefix, but not the full permission, security or failure model. | Dependency Opacity |
| API token permission → remediation path | The reader sees the cause of a 403 error, but not the exact token setting path or error payload. | Reconstruction Effort |

## Dependency chain behind the friction

```text
[API specification source]
  ↓
[File upload] / [URL] / [CI/CD Flow]
  ↓
[New API reference]
  ↓
[Publish confirmation]
  ↙                  ↘
[Close]              [Publish]
  ↓                  ↓
[Draft state]        [Published API documentation]

[Existing API reference]
  ↓
[Regenerate / Resync]
  ↓
[Updated API documentation]
  ↓
[Custom content retained]
  ↳ merge / overwrite / conflict rules unconfirmed

[CI/CD Flow]
  ↓
[Command + --path]
  ↓
[API key validity]
  ↳ old key invalid after regeneration

[Portal setting]
  ↓
[Show download API reference]
  ↓
[Download API reference]
  ↳ off-state behavior unconfirmed

[Try it & see response]
  ↓
[tryit.document360.io routing]
  ↳ security / permission / failure behavior unconfirmed

[API token POST permission]
  ↓
[403 error]
  ↳ remediation path incomplete
```

## Operational consequence

The reader can execute local procedures, but must reconstruct the cross-procedure behavior manually.

This creates Reconstruction Effort for:

- implementation teams setting up API documentation;
- support teams answering generation, publication, resync or download questions;
- product teams reasoning about state visibility and failure behavior;
- documentation teams explaining what survives regeneration;
- API users diagnosing Try it, webhook or token-permission behavior.

The main consequence is not immediate task failure.

The main consequence is that operational understanding is distributed across several procedural fragments without a visible behavior model.

## Why this is portfolio-relevant

This case is portfolio-relevant because it shows a concrete example of behavioral documentation analysis.

The source documentation is usable at the procedural level.

The analysis reveals where procedural clarity does not equal System Interpretability.

The case demonstrates how Behavioral Documentation can make hidden dependencies visible without rewriting the source.

## Proof chain

| Chain element | Case evidence |
|---|---|
| Visible evidence | S1 documents file, URL and CI/CD generation; publish and draft behavior; resync and regeneration; custom content retention; download setting; Try it routing; 403 behavior. |
| Associated content | `extraction-notes.md`, `behavior-matrix.md`, `dependency-map.md` |
| Targeted contact | Document360 or SaaS documentation / product / support / knowledge-base stakeholders |
| Opportunity | Show how a behavioral matrix and dependency map reduce reconstruction effort for API documentation workflows. |

## Boundary of the claim

This friction statement is local to S1.

It does not claim that Document360 lacks this behavior in the product.

It does not claim that other Document360 pages fail to document the missing details.

It only claims that S1 alone does not expose the full operational model required to reconstruct the API reference lifecycle without inference.

## Minimal publishable formulation

S1 documents how to generate and maintain API documentation through file upload, URL and CI/CD paths. It also documents publication, draft state, regeneration, custom content retention, download settings, Try it routing and 403 token-permission behavior.

The main friction is Dependency Opacity: these behaviors are documented locally, but the dependencies between source type, state transition, role boundary, setting, error behavior and recovery path are not made explicit as one operational model.

A reader can follow each procedure, but cannot fully reconstruct the behavior of an API reference across creation, draft, publish, resync, download and error states without additional inference.

## Quality check

- [x] The friction is grounded in S1.
- [x] The friction is derived from `extraction-notes.md`.
- [x] The friction is consistent with `behavior-matrix.md`.
- [x] The friction is consistent with `dependency-map.md`.
- [x] No undocumented retry behavior is inferred.
- [x] No undocumented rollback behavior is inferred.
- [x] No permission inheritance is inferred.
- [x] Missing behavior is preserved as unconfirmed.
- [x] The claim is local to S1.
- [x] The file can be used to prepare `portfolio-minimum.md`.
