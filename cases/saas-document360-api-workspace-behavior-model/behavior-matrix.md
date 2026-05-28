# Behavior matrix

## Case

Case folder: `05_portfolio/cases/saas-document360-api-workspace-behavior-model/`

Source:

- S1: `source-excerpts/document360-managing-api-documentation.md`

Input artifact:

- `extraction-notes.md`

## Matrix scope

This matrix consolidates the raw behavioral extraction from S1.

It does not rewrite the source documentation.

It does not infer missing rollback, retry, permission inheritance, lifecycle states or error behavior.

## Behavior matrix

| Matrix ID | Extraction ID | Branch | Actor / role | Starting state | Trigger | Documented action | Resulting state | Permission | Condition / dependency | Exception / message | Limit | Evidence | Certainty | Operational consequence |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| BM1 | E1 | Generation methods | User | API documentation not yet generated | User chooses one documented generation method | API documentation can be generated from URL, JSON/YAML/YML file or CI/CD flow | Source type selected for generation | Not specified | Supported source type required | Not specified | Permission boundary unconfirmed | S1 | Documented with unconfirmed permission boundary | Reader sees available generation paths, but cannot infer who can use them |
| BM2 | E2 | File upload generation | User | No API reference exists for selected file | User selects `Upload API definition`, uploads or selects a file, then clicks `New API reference` | Uploaded specification becomes a new API reference and moves to publish confirmation | API reference created before publication | Not specified | File upload, Document360 Drive selection or drag and drop | Alerts and warnings may appear if associated with uploaded file | Validation failure behavior unconfirmed | S1 | Documented with unconfirmed validation behavior | Creation and publication are separate steps |
| BM3 | E3 | Publish behavior | User | Generated API reference awaiting publication | User clicks `Publish` | API documentation is generated and published | Published API documentation | Not specified | Publish confirmation step | Not specified | Exact reader-facing visibility unconfirmed | S1 | Documented with unconfirmed visibility boundary | Publishing is documented, but visibility model remains incomplete |
| BM4 | E4 | Draft behavior | User | Generated API documentation can remain unpublished | User clicks `Close` instead of `Publish` | Generated API documentation articles remain in draft state | Draft visible in `Categories & Articles` pane | Not specified | Return to Documentation screen | Not specified | Who can see or edit draft is unconfirmed | S1 | Documented with unconfirmed role and visibility boundary | Draft and publish are separate states, but role visibility is incomplete |
| BM5 | E5 | URL generation | User | No API reference exists for URL source | User selects `Create from URL`, enters URL, clicks `Add API reference`, then `Publish` | URL specification becomes generated API documentation | Generated API documentation from URL source | Not specified | URL entered in the `URL` field for an API specification file | Not specified | URL reachability, validation failure and retry behavior are not specified in S1 | S1 | Documented with unconfirmed URL failure behavior | URL-based generation is documented, but error recovery cannot be reconstructed |
| BM6 | E6 | CI/CD generation | User | No CI/CD based API reference exists | User selects `CI/CD Flow`, copies command, updates `--path`, runs it in terminal | API specification file is uploaded and API documentation is generated | Generated API documentation through CI/CD flow | Not specified | Node.js, Document360 CLI command shown in the UI, updated `--path` value | Not specified | User role, credential scope and failure behavior are unconfirmed | S1 | Documented with separated resync dependency | CI/CD generation is documented, but role and failure behavior remain incomplete |
| BM7 | E7 | API key validity | User | API key exists in copied CLI command | User regenerates API key in UI | Old key becomes invalid and `--apiKey` must be updated before running CLI command again | Existing CLI command no longer valid until updated | Not specified | Current API key value | Old key no longer valid | Who can access or regenerate the key is unconfirmed | S1 | Documented key invalidation with unconfirmed role boundary | CI/CD behavior depends on a hidden key-management boundary |
| BM8 | E8 | Webhook behavior | User / reader | OpenAPI 3.1 spec includes webhooks | Spec is imported or regenerated | Webhooks are imported, shown with event icon and included in resync operations | Webhooks visible in API documentation behavior | Not specified | OpenAPI 3.1 webhook content | `Try it` is not available for webhooks | Limitation surface and alternative workflow unconfirmed | S1 | Documented with unconfirmed visibility boundary | Webhook behavior is documented, but user-facing limitation handling is incomplete |
| BM9 | E9 | Regeneration / resync | User | Existing API documentation is based on earlier API specification | User regenerates, resyncs, edits URL or uploads newer file | API documentation is regenerated according to latest or updated specification | Regenerated API documentation | Not specified | Existing API reference, source type and updated specification | Custom content is retained | Merge rules, conflict handling and rollback unconfirmed | S1 | Documented with unconfirmed conflict behavior | Regeneration appears safe, but content conflict behavior cannot be reconstructed |
| BM10 | E10 | Download API reference | User | API reference exists | User selects `Download API reference` | API reference file is downloaded locally in JSON or YAML format | Local API reference file downloaded | Not specified | API reference existence, upload type and `Show download API reference` toggle being turned on | Not specified | Behavior when the toggle is off and role boundary unconfirmed | S1 | Documented dependency with unconfirmed off-state behavior | Download depends on a setting, but access and disabled-state behavior remain unclear |
| BM11 | E11 | Try it routing | User / reader | API documentation contains Try it behavior | User clicks `Try it & see response` | Request URL includes `tryit.document360.io` prepended to API base URL | Request routed through Document360 internal subdomain | Not specified | Document360 internal routing through `tryit.document360.io` | Not specified | Security, permission and failure behavior unconfirmed | S1 | Documented with unconfirmed security and error boundaries | Support can explain the URL prefix, but not the full failure model |
| BM12 | E12 | API token permission error | API caller | API token lacks required POST permission | User attempts to post details through API endpoint | POST request returns 403 error | Request blocked by token permission requirement | API token must have required POST permission | API token permission controls POST behavior | 403 error | Exact token setting path and error payload unconfirmed | S1 | Documented error cause with unconfirmed recovery path | Token permission is documented as a cause, but remediation remains incomplete |

## Unconfirmed fields carried from extraction

| Area | Unconfirmed behavior | Related extraction IDs | Matrix impact |
|---|---|---|---|
| Role model | Who can create, publish, close, regenerate, resync, download or manage API keys is not specified in S1 | E1, E3, E4, E6, E7, E10 | Permission fields remain `Not specified` or `Unconfirmed` |
| State lifecycle | The full lifecycle across new API reference, draft, published, regenerated, resynced and downloaded states is not reconstructible from S1 | E2, E3, E4, E9, E10 | Resulting states remain local, not unified |
| Error model | Alerts, warnings, invalid files, URL failures, CLI failures and disabled download behavior are not fully described | E2, E5, E6, E10, E12 | Exception fields remain partial |
| Rollback / retry | Rollback and retry behavior are not documented | E5, E6, E9 | Recovery paths remain unconfirmed |
| Custom content conflict | Custom content retention is documented, but merge, overwrite and conflict priority are not documented | E9 | Regeneration safety remains uncertain |

## Dependency candidates

| Dependency ID | Matrix IDs | From | To | Certainty |
|---|---|---|---|---|
| D1 | BM1, BM2, BM5, BM6 | API specification source | Generated API documentation | Documented |
| D2 | BM2, BM3, BM4 | New API reference | Publish confirmation / draft state | Documented |
| D3 | BM6, BM7 | CI/CD command | API key and `--path` value | Documented, role boundary unconfirmed |
| D4 | BM8, BM9 | OpenAPI 3.1 webhooks | Webhook display and resync behavior | Documented |
| D5 | BM9 | Regeneration | Custom content retention | Documented, conflict rules unconfirmed |
| D6 | BM10 | Portal toggle | Download API reference behavior | Documented, off-state unconfirmed |
| D7 | BM11 | Try it action | `tryit.document360.io` routing | Documented |
| D8 | BM12 | API token permission | 403 POST behavior | Documented |

## Quality check

- [x] Every matrix row maps to one extraction ID.
- [x] Every extraction ID maps back to S1.
- [x] No undocumented retry behavior has been added.
- [x] No undocumented rollback behavior has been added.
- [x] No permission inheritance has been inferred.
- [x] Draft and publish behavior remain separate.
- [x] File, URL and CI/CD generation remain separate.
- [x] Regeneration and CI/CD resync are not merged into one behavior.
- [x] Dependency candidates are prepared but not over-modeled.
- [x] The matrix can be read without opening the source excerpt.
