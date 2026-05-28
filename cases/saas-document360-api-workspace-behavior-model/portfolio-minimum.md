# Portfolio minimum

## Case

Case folder: `05_portfolio/cases/saas-document360-api-workspace-behavior-model/`

Case name:

- Document360 API workspace behavior model

Primary source:

- S1: `source-excerpts/document360-managing-api-documentation.md`

Supporting artifacts:

- `source-log.md`
- `extraction-notes.md`
- `behavior-matrix.md`
- `dependency-map.md`
- `main-friction.md`

## Purpose

This file defines the minimum publishable version of the Document360 API workspace case.

It is not the final portfolio article.

It is the smallest complete case package that a third party can open and understand without oral explanation.

## Minimum case statement

Document360’s `Managing API documentation` page documents several local procedures for API documentation: generating API references from file, URL or CI/CD flow; publishing or keeping generated articles in draft; regenerating or resyncing API documentation; retaining custom content; importing webhooks; downloading API references; routing Try it requests; and explaining a 403 token-permission error.

The main finding is that the procedures are individually documented, but the complete operational model remains partially hidden.

A reader can follow local instructions, but must reconstruct the dependencies between source type, generation method, publish confirmation, draft state, resync, custom content retention, API key validity, download setting, webhook limitation, Try it routing and token permission behavior.

This creates Reconstruction Effort and Dependency Opacity.

## Minimum evidence chain

```text
visible evidence
  ↓
behavioral extraction
  ↓
behavior matrix
  ↓
dependency map
  ↓
main friction
  ↓
targeted outreach / portfolio opportunity
```

## Proof chain

| Chain element | Case content |
|---|---|
| Visible evidence | S1 documents API documentation generation from URL, file and CI/CD; publish/draft behavior; resync/regeneration; custom content retention; webhook behavior; download setting; Try it routing; 403 behavior. |
| Associated content | `extraction-notes.md`, `behavior-matrix.md`, `dependency-map.md`, `main-friction.md` |
| Contact targeted | Document360 / Kovai.co stakeholders involved in documentation, product education, knowledge base, API documentation, support operations or product marketing. |
| Opportunity | Demonstrate how a behavioral matrix and dependency map can reduce reconstruction effort in SaaS API documentation workflows. |

## Minimum publishable components

| Component | File | Status | Purpose |
|---|---|---|---|
| Source excerpt | `source-excerpts/document360-managing-api-documentation.md` | Ready | Preserves the source material used for analysis. |
| Source log | `source-log.md` | Ready | Gives S1 a stable source ID and verification metadata. |
| Raw extraction | `extraction-notes.md` | Ready | Extracts documented behaviors, ambiguities, absences and dependencies from S1. |
| Behavior matrix | `behavior-matrix.md` | Ready | Converts raw extraction into a structured behavior model. |
| Dependency map | `dependency-map.md` | Ready | Makes visible the dependencies between sources, actions, states, settings, tokens and limits. |
| Main friction | `main-friction.md` | Ready | Identifies the primary reconstruction problem and its operational consequence. |
| Portfolio minimum | `portfolio-minimum.md` | Current file | Defines the minimum publishable package and proof chain. |

## Scope of the publishable minimum

Included:

- API reference generation from file, URL and CI/CD;
- publish confirmation;
- draft behavior;
- regeneration and resync;
- custom content retention;
- webhook import and Try it limitation;
- download API reference setting;
- Try it routing through `tryit.document360.io`;
- 403 token-permission behavior;
- unresolved role, state, retry, rollback and visibility boundaries.

Excluded:

- full Document360 product review;
- UI critique;
- documentation rewrite;
- feature recommendation;
- unsupported assumptions about role permissions;
- unsupported assumptions about rollback or retry;
- unsupported assumptions about URL validation;
- unsupported assumptions about download behavior when the toggle is off;
- claims about Document360 pages not included in S1.

## Minimum narrative

### What the page documents

S1 documents several procedural paths for managing API documentation in Document360.

The page explains that API documentation can be generated from:

- URL;
- JSON/YAML/YML file;
- CI/CD flow.

It also documents:

- publish confirmation;
- draft behavior through `Close`;
- regeneration and resync;
- custom content retention;
- webhook behavior for OpenAPI 3.1;
- download API reference behavior;
- Try it routing through `tryit.document360.io`;
- 403 behavior caused by missing POST permission on an API token.

### What the analysis shows

The documentation supports local task execution.

It does not expose the complete behavior model needed to reconstruct the lifecycle of an API reference across creation, draft, publication, regeneration, resync, download and error states.

The reader must infer how local procedures relate to each other.

### Why this matters

The missing links affect operational understanding.

They affect:

- onboarding;
- support;
- API setup;
- configuration;
- role boundaries;
- error handling;
- workflow reconstruction.

### Main friction

The main friction is Reconstruction Effort caused by Dependency Opacity.

The documentation gives local procedural instructions, but the dependencies between actions, states, settings, keys, roles and recovery paths are not consolidated into a visible behavior model.

## Behavioral findings summary

| Finding | Evidence base | Status |
|---|---|---|
| API documentation has three documented generation paths. | E1, BM1, D1 | Documented |
| File upload leads to New API reference, publish confirmation and publish/draft choice. | E2, E3, E4, BM2-BM4, D2 | Documented with unconfirmed role and visibility boundary |
| URL generation is documented, but validation and retry behavior are not. | E5, BM5, D3 | Documented with unconfirmed failure behavior |
| CI/CD generation is documented, but credential scope, role model and failure behavior are not. | E6, E7, BM6-BM7, D4-D5 | Documented with unconfirmed operational boundaries |
| Webhooks are imported and included in resync, but Try it is unavailable. | E8, BM8, D6 | Documented with unconfirmed limitation surface |
| Custom content is retained during regeneration, but conflict rules are not documented. | E9, BM9, D7 | Documented with unconfirmed merge behavior |
| Download depends on the Show download API reference toggle. | E10, BM10, D8 | Documented dependency with unconfirmed off-state behavior |
| Try it routing uses `tryit.document360.io`. | E11, BM11, D9 | Documented with unconfirmed security and failure behavior |
| 403 behavior is caused by missing POST permission on the API token. | E12, BM12, D10-D11 | Documented with incomplete remediation path |

## Unconfirmed behavior summary

| Area | Unconfirmed behavior | Operational consequence |
|---|---|---|
| Role model | Who can create, publish, close, regenerate, resync, download or manage API keys is not specified in S1. | Permission boundaries cannot be reconstructed. |
| State lifecycle | The full lifecycle across generated, draft, published, regenerated, resynced and downloaded states is not defined. | Teams may describe the API reference lifecycle differently. |
| Error model | Alerts, warnings, invalid file behavior, URL failures, CI/CD failures and disabled download behavior are not fully described. | Troubleshooting remains fragmented. |
| Retry / rollback | Retry and rollback behavior are not documented. | Recovery cannot be reconstructed from S1 alone. |
| Custom content conflict | Retention is documented, but merge, overwrite, collision and priority rules are not. | Regeneration safety remains uncertain. |
| Download setting | The toggle dependency is documented, but off-state behavior is not. | Access troubleshooting remains incomplete. |
| Webhook limitation | Try it is unavailable for webhooks, but the visible limitation surface is not documented. | Reader/editor experience remains incomplete. |
| Try it routing | The routing prefix is documented, but security, permission and failure behavior are not. | Support can explain the prefix, not the full runtime model. |

## Portfolio value

This case demonstrates a concrete application of Behavioral Documentation.

It shows how a documentation page can be procedurally useful while still requiring significant reconstruction effort.

It also shows how three artifacts can make the hidden structure visible:

| Artifact | Contribution |
|---|---|
| `extraction-notes.md` | Separates documented behavior from uncertainty. |
| `behavior-matrix.md` | Converts local observations into structured behavioral rows. |
| `dependency-map.md` | Makes cross-procedure dependencies visible. |
| `main-friction.md` | Converts the analysis into a clear portfolio claim. |

## Minimal public-facing summary

Document360’s API documentation page documents how to generate API references from file, URL and CI/CD sources, then publish, keep in draft, regenerate, resync, download and test parts of the API documentation.

The procedures are visible.

The operational model is not fully visible.

The main friction is the reconstruction effort required to connect source type, generated API reference, publish confirmation, draft state, resync behavior, custom content retention, API key validity, download setting, Try it routing and token-permission errors.

A behavior matrix and dependency map make those dependencies visible without rewriting the source documentation.

## Minimal LinkedIn / outreach angle

Document360’s API documentation page makes file, URL and CI/CD generation visible, but the API reference lifecycle still has to be reconstructed across publish, draft, resync, custom content, API key, download and 403 behaviors. I mapped those dependencies into a behavior matrix.

## Targeted contact angle

Relevant contact types:

| Contact type | Why relevant |
|---|---|
| Documentation leader | Owns documentation structure, lifecycle explanations and cross-page coherence. |
| Product education / knowledge base lead | Owns onboarding and procedural comprehension. |
| Product manager for API documentation | Owns workflow behavior, states, permissions and feature boundaries. |
| Support operations lead | Owns troubleshooting paths, error interpretation and support escalation. |
| Developer education / DevRel | Owns API setup comprehension and developer-facing workflows. |
| Product marketing | Owns feature explanation, but should not be the primary technical validation contact. |

## Opportunity statement

This case can support a portfolio entry or targeted conversation showing how SaaS API documentation can move from procedural instructions to Operational Understanding.

The value is not a rewrite.

The value is making behavioral dependencies visible:

- source → generation;
- generation → publish confirmation;
- publish confirmation → draft or published state;
- resync → custom content retention;
- CI/CD → key validity;
- portal setting → download;
- Try it → routing behavior;
- token permission → 403 behavior.

## Boundary of the case

This case is local to S1.

It does not claim that Document360 does not document the missing behavior elsewhere.

It does not claim that the product behavior is defective.

It only shows that S1 alone requires reconstruction effort to understand the API reference lifecycle and its dependencies.

## Completion criteria

- [x] The case has a scoped source.
- [x] The source is logged as S1.
- [x] Raw extraction exists.
- [x] Behavior matrix exists.
- [x] Dependency map exists.
- [x] Main friction exists.
- [x] The minimum proof chain is explicit.
- [x] The case can be opened by a third party and understood without oral explanation.
- [ ] Source URL must be validated again before public publication.
- [ ] Public-facing version must be reduced before publication.
