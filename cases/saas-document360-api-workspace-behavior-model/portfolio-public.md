# Document360 API Workspace, Behavior Model

## Case status

Minimal public portfolio case.

This case is based on one scoped documentation source:

- S1: Document360, `Managing API documentation`

The analysis is local to S1. It does not claim that Document360 fails to document these behaviors elsewhere.

## What was analyzed

The analysis focuses on the documented behavior of the API documentation workflow in Document360.

The source describes how API documentation can be generated and maintained through several paths:

- file upload;
- URL import;
- CI/CD flow;
- publish confirmation;
- draft state;
- regeneration and resync;
- custom content retention;
- webhook handling;
- API reference download;
- Try it routing;
- API token permission errors.

## Main finding

The documentation gives usable procedural instructions.

The behavior model is less visible.

A reader can follow local tasks, but must reconstruct how those tasks connect across source type, generation, draft, publication, resync, download settings, API key validity, webhook limitations and token-permission errors.

The main friction is Reconstruction Effort caused by Dependency Opacity.

## Behavioral pattern

The documented workflow is not a single linear path.

It is a set of related branches:

```text
API specification source
  ↓
File upload / URL / CI/CD flow
  ↓
New API reference
  ↓
Publish confirmation
  ↙              ↘
Draft state      Published API documentation

Existing API reference
  ↓
Regenerate / resync
  ↓
Updated API documentation
  ↓
Custom content retained
```

Several dependency points remain operationally important but not fully reconstructible from S1 alone:

- who can create, publish, regenerate, resync, download or manage API keys;
- what happens when URL import or CI/CD generation fails;
- how alerts and warnings affect the workflow;
- how custom content is merged or protected during regeneration;
- what happens when the download setting is off;
- how Try it limitations are surfaced for webhooks;
- how token-permission errors are remediated.

## Behavior matrix snapshot

| Area | Documented behavior | Remaining uncertainty |
|---|---|---|
| Source selection | API documentation can be generated from URL, JSON/YAML/YML file or CI/CD flow. | Role permissions are not specified in S1. |
| File upload | Uploading or selecting a file can create a new API reference and lead to publish confirmation. | Validation failure behavior is not specified. |
| Draft / publish | Clicking `Publish` generates API documentation; clicking `Close` keeps generated articles in draft. | Full visibility model is not specified. |
| CI/CD | A copied CLI command with an updated `--path` can upload the specification and generate documentation. | Credential scope, role model and failure behavior are not specified. |
| Regeneration | API documentation can be regenerated or resynced; custom content is retained. | Merge, overwrite, conflict and rollback behavior are not specified. |
| Download | API reference download depends on the `Show download API reference` setting. | Behavior when the setting is off is not specified. |
| Try it | Try it requests use `tryit.document360.io` for internal routing. | Security, permission and failure behavior are not specified. |
| 403 error | A 403 can occur when the API token lacks POST permission. | Exact token setting path and error payload are not specified. |

## Dependency visibility

The strongest documented dependencies are:

- source type → generated API documentation;
- new API reference → publish confirmation or draft state;
- CI/CD command → `--path` and API key validity;
- OpenAPI 3.1 webhooks → webhook display and resync inclusion;
- regeneration → custom content retention;
- portal setting → API reference download;
- API token permission → 403 behavior.

The weakest dependencies are:

- role-to-action mapping;
- URL validation and retry;
- CI/CD failure recovery;
- draft and published visibility;
- custom content conflict behavior;
- download off-state behavior;
- webhook limitation visibility;
- Try it security and failure behavior.

## Why it matters

Procedural documentation can be accurate while still leaving operational understanding fragmented.

For API documentation workflows, this matters because several teams may need to reason about the same behavior:

- documentation teams need to explain lifecycle states;
- support teams need to troubleshoot generation, resync, download and permission issues;
- product teams need to understand where behavior depends on settings, roles or source type;
- API users need to understand what changed, what failed and what can be retried.

The issue is not missing instructions.

The issue is the absence of an explicit behavior model connecting the instructions.

## What the analysis produced

The working case produces three artifacts:

| Artifact | Purpose |
|---|---|
| `extraction-notes.md` | Separates documented behavior from uncertainty. |
| `behavior-matrix.md` | Converts observations into structured behavioral rows. |
| `dependency-map.md` | Makes cross-procedure dependencies visible. |

Together, these artifacts show how Behavioral Documentation can reduce reconstruction effort without rewriting the source documentation.

## Boundary of the claim

This analysis is scoped to one Document360 documentation page.

It does not evaluate the product.

It does not test the UI.

It does not infer undocumented permissions, rollback, retry or lifecycle behavior.

It preserves uncertainty where the source does not confirm the behavior.

## Portfolio value

This case demonstrates the value of Behavioral Documentation for SaaS API documentation.

It shows how a documentation page can be procedurally clear while still requiring readers to reconstruct dependencies between actions, states, settings, permissions and recovery paths.

The deliverable is not a rewrite.

The deliverable is a behavior model.
