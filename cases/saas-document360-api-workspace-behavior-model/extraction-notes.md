# Case 1, extraction notes

## Case

Case folder: `05_portfolio/cases/document360-api-workspace-behavior-model/`

Source excerpt:

- `source-excerpts/document360-managing-api-documentation.md`

Active source:

- S1

Phase:

- Phase 1, portfolio case 1

Task:

- Raw behavioral extraction

## Correction status

Phase 1 audit corrections have been applied.

Corrected items:

- E5: removed unsupported URL reachability wording.
- E6: separated initial CI/CD generation from manual CI/CD resync dependencies.
- E7: downgraded API key access from implied permission to `Not specified`.
- E10: removed unsupported toggle-off download behavior.
- A1, A2, A4, A5 and A6: downgraded stabilizing hypotheses to unconfirmed behavior.

## Scope

The extraction is limited to the Document360 page `Managing API documentation`.

The analyzed workflow is the API documentation entry and maintenance workflow:

- creating API documentation from a specification file;
- creating API documentation from a URL;
- creating API documentation through CI/CD;
- publishing generated API documentation;
- keeping generated API documentation in draft state;
- regenerating or resyncing API documentation;
- downloading API reference files;
- identifying documented limits and unconfirmed behaviors.

Out of scope for this extraction:

- rewriting the Document360 documentation;
- evaluating UI quality;
- testing the product;
- inferring undocumented role behavior;
- inferring undocumented rollback, retry or error recovery behavior;
- turning this into the final portfolio narrative.

## Source log

| Source ID | URL | Page title | Section | Fragment / anchor | Date checked | In scope | Notes |
|---|---|---|---|---|---|---|---|
| S1 | https://docs.document360.com/docs/manage-api-documentation | Managing API documentation | Full page | `source-excerpts/document360-managing-api-documentation.md` | 2026-05-28 | Yes | Primary source for API reference generation, publication, resync and download behaviors |

## Raw behavioral extraction

| ID | Source | State | Trigger | Transition | Permission | Exception | Dependency | Evidence | Uncertainty | Impact |
|---|---|---|---|---|---|---|---|---|---|---|
| E1 | S1 | API documentation not yet generated | User chooses one of the documented generation methods | API specification file, URL or CI/CD flow becomes the source for generated API documentation | Not specified | Not specified | API documentation depends on a supported source type | “There are three methods to generate API documentation in Document360: From a URL; From a JSON/YAML/YML file; With a CI/CD flow.” | Documented source options. Permission boundary unconfirmed. | API / workflow |
| E2 | S1 | No API reference exists for the selected file | User selects `Upload API definition`, uploads or selects a file, then clicks `New API reference` | Uploaded JSON/YAML/YML specification becomes a new API reference and moves to publish confirmation | Not specified | Alerts and warnings may appear if associated with the uploaded file | New API reference depends on file upload, Document360 Drive selection or drag and drop | “Click either Upload from my device or Choose from Drive... You can also drag and drop your file”; “Click New API reference to navigate to the Publish confirmation window.” | Documented creation path. Validation failure behavior unconfirmed. | onboarding / API / workflow |
| E3 | S1 | Generated API reference awaiting publication | User clicks `Publish` in the publish confirmation window | API documentation is generated and published | Not specified | Not specified | Publication depends on confirmation after API reference creation | “You will see a success message...”; “Click Publish to generate your API documentation.” | Documented publish action. Exact published state and visibility boundary unconfirmed. | workflow / support |
| E4 | S1 | Generated API documentation can remain unpublished | User clicks `Close` instead of `Publish` after upload | Generated API documentation articles remain in draft state | Not specified | Not specified | Draft visibility depends on returning to the Documentation screen and Categories & Articles pane | “To review your documentation before publishing, click Close... Your draft will be visible in the Categories & Articles pane.” | Documented draft behavior. Who can see or edit the draft is unconfirmed. | onboarding / workflow / role |
| E5 | S1 | No API reference exists for a URL source | User selects `Create from URL`, enters a URL, then clicks `Add API reference` and `Publish` | URL specification becomes generated API documentation | Not specified | Not specified | Generation depends on a URL entered in the `URL` field for an API specification file | “In the Source settings screen, enter the URL...”; “Click Add API reference”; “Click Publish to generate your API documentation.” | Documented URL creation path. URL reachability, validation failure and retry behavior are not specified in S1. | API / configuration / error |
| E6 | S1 | No CI/CD based API reference exists | User selects `CI/CD Flow`, copies the command, updates `--path`, runs it in terminal | API specification file is uploaded and API documentation is generated | Not specified | Not specified | Initial CI/CD generation depends on Node.js, the Document360 CLI command shown in the `New API reference` window and an updated `--path` value | “ensure that the latest version of Node.js is installed”; “Copy the full CLI command”; “update the `--path` value”; “Your API specification file will be uploaded, and API documentation will be generated.” | Documented initial CI/CD generation path. Manual CI/CD resync command separately includes `--apiKey`, `--userId`, `--apiReferenceId` and `--path`. User role, credential scope and failure behavior are unconfirmed. | API / configuration / role |
| E7 | S1 | API key exists in copied CLI command | User regenerates the API key in the UI | Existing CLI command stops being valid until `--apiKey` is updated | Not specified | Old key no longer valid | CI/CD workflow depends on current API key value | “If you regenerate the API key... you must update the `--apiKey` value... The old key will no longer be valid.” | Documented key invalidation. Who can access or regenerate the key, failure message and recovery path are unconfirmed. | API / configuration / error |
| E8 | S1 | OpenAPI 3.1 spec includes webhooks | Spec is imported or regenerated | Webhooks are imported, displayed with an event icon and included in resync operations | Not specified | Try it is not available for webhooks | Webhook display depends on OpenAPI 3.1 spec content | “When your OpenAPI 3.1 spec includes webhooks, Document360 imports them and shows an event icon”; “Try it is not available for webhooks”; “Webhooks are included in resync operations.” | Documented webhook behavior. Visibility and exception handling unconfirmed. | API / workflow |
| E9 | S1 | Existing API documentation is based on an earlier API specification | User regenerates, resyncs, edits URL or uploads a newer file | API documentation is regenerated according to the latest or updated API specification | Not specified | Custom content is retained during regeneration | Regeneration depends on existing API reference, source type and updated specification | “you can regenerate your API documentation”; “Any custom content you add... will be retained”; “Click Resync”; “Click Update.” | Documented regeneration. Merge rules, conflict handling and rollback unconfirmed. | workflow / support / configuration |
| E10 | S1 | API reference exists | User selects `Download API reference` from the Knowledge base site or portal | API reference file is downloaded locally in JSON or YAML format | Not specified | Not specified | Download depends on API reference existence, upload type and the `Show download API reference` toggle being turned on in Knowledge base portal settings | “Click Download API reference”; “It will be downloaded in a standard format such as .json or .yaml”; “ensure that the Show download API reference toggle... is turned on.” | Documented download path. Behavior when the toggle is off, disabled-state message and role boundary are unconfirmed. | API / configuration / role |
| E11 | S1 | API documentation contains Try it behavior | User clicks `Try it & see response` | Request URL includes `tryit.document360.io` prepended to the API base URL | Not specified | Not specified | Try it request routing depends on Document360 internal subdomain | “the request URL will include `tryit.document360.io` prepended to your API's base URL”; “used internally to route and process API test requests.” | Documented routing behavior. Security, permission and failure behavior unconfirmed. | API / support / error |
| E12 | S1 | API token lacks required permission | User attempts to post details through an API endpoint | POST request returns a 403 error | API token must have permission for POST requests | 403 error occurs when token lacks required POST permission | Endpoint behavior depends on API token permissions | “A 403 error occurs... when the API token used does not have the required permission to make a POST request.” | Documented error cause. Exact token setting path and error payload unconfirmed. | API / role / error |

## Important absences

| ID | Missing behavior | Related source | Why it matters | Impact |
|---|---|---|---|---|
| M1 | Rollback behavior after regeneration | S1 | The source states that API documentation can be regenerated, but does not confirm whether a previous generated version can be restored. | workflow / support |
| M2 | Retry behavior after failed generation, upload, URL import or CI/CD sync | S1 | The source describes creation and regeneration paths, but does not document what the user should do after a failed import or failed sync. | error / support |
| M3 | Rule priority between generated API content and custom content | S1 | The source says custom content is retained, but does not document how conflicts are resolved when regenerated content overlaps with custom content. | configuration / workflow |
| M4 | Error message visibility for alerts, warnings, URL failures, CLI failures and download-disabled states | S1 | The source mentions alerts, warnings and 403, but does not provide a full message model across failure states. | error / support |
| M5 | User visibility and role boundaries for draft, generated, published, regenerated and downloadable API references | S1 | The source describes actions, but does not identify which roles can perform or view them. | role / workflow |
| M6 | Validation behavior for unsupported or malformed API specifications | S1 | The source lists supported formats, but does not document what happens when the file or URL does not match the required format. | API / error |
| M7 | Publication state model after generation | S1 | The source distinguishes draft and publish behavior, but does not define the complete lifecycle of generated API reference states. | onboarding / workflow |
| M8 | Resync scheduling behavior for URL and file sources | S1 | The FAQ says URL, JSON, YAML and YML references are not automatically resynced, but does not define reminders, stale-state indicators or update prompts. | workflow / support |
| M9 | Webhook error and limitation handling | S1 | The source says Try it is unavailable for webhooks, but does not document the visible message or alternative test workflow. | API / support |
| M10 | Download permission model | S1 | The source states that the Show download API reference toggle must be on, but does not identify who can enable it or who can download. | role / configuration |

## Dependencies to map

| ID | From | To | Dependency type | Source | Certainty | Reason to map |
|---|---|---|---|---|---|---|
| D1 | API specification source | Generated API documentation | Generation dependency | S1 | Documented | The generated documentation depends on file, URL or CI/CD as source input. |
| D2 | Upload API definition | Publish confirmation | Workflow transition | S1 | Documented | File upload does not directly equal publication. It leads to confirmation, then publish or close. |
| D3 | Close action | Draft visibility | State transition | S1 | Documented | Generated articles can remain in draft state instead of being published. |
| D4 | API source URL | Add API reference | Source dependency | S1 | Documented | URL-based generation depends on the URL field and the Add API reference action. |
| D5 | CI/CD generation command | `--path` value | Configuration dependency | S1 | Documented | Initial CI/CD generation depends on the command shown in the UI and the updated `--path` value. API key, user ID and API reference ID are documented separately in the manual resync command. |
| D6 | Regenerated API key | CLI resync command | Key validity dependency | S1 | Documented | Regenerating the key invalidates the old command value. |
| D7 | OpenAPI 3.1 webhooks | Webhook display and resync | Spec feature dependency | S1 | Documented | Webhook behavior depends on the content of the OpenAPI 3.1 specification. |
| D8 | Generated API reference | Custom content | Preservation dependency | S1 | Documented, conflict rules unconfirmed | Custom content retention is documented, but conflict behavior is not. |
| D9 | API reference source type | Resync behavior | Update dependency | S1 | Documented | URL and file sources are manually updated, CI/CD is recommended for automatic resync. |
| D10 | Portal setting | Download API reference | Visibility and access dependency | S1 | Documented, permission unconfirmed | Download behavior depends on the Show download API reference toggle. |
| D11 | API token permission | POST endpoint behavior | Permission dependency | S1 | Documented | POST behavior depends on token permissions and can produce a 403 error. |
| D12 | `isPublished` parameter | Available language states | Retrieval dependency | S1 | Documented, outside primary scope | Retrieval output depends on whether published-only or all content is requested. |

## Ambiguities and hypotheses

| ID | Source | Gap type | What is unclear | Hypothesis, if any | Status | Operational consequence |
|---|---|---|---|---|---|---|
| A1 | S1 | Permission ambiguity | The documentation does not state which Document360 roles can create, publish, regenerate, resync or download API references. | None. Role and permission model not reconstructible from S1. | Unconfirmed | Support and implementation teams cannot reconstruct who can perform each action from S1 alone. |
| A2 | S1 | State ambiguity | The documentation mentions draft and published outputs, but not the full state model for generated API references. | None. A coherent lifecycle across draft, published, regenerated, resynced and downloaded states is not reconstructible from S1. | Unconfirmed | Onboarding and support explanations may diverge when explaining what users see after upload, close, publish or update. |
| A3 | S1 | Error ambiguity | Alerts, warnings and 403 are documented, but the source does not define a consistent error-message model. | Error handling may vary by source type: file, URL, CI/CD, API token or portal setting. | Hypothesis | Troubleshooting requires reconstruction across UI, CLI and API contexts. |
| A4 | S1 | Preservation ambiguity | Custom content is retained after regeneration, but merge, overwrite and conflict rules are not documented. | None. Storage, merge and conflict behavior for custom content is not reconstructible from S1. | Unconfirmed | Teams cannot predict what survives regeneration without testing. |
| A5 | S1 | Visibility ambiguity | Draft visibility is mentioned in the Categories & Articles pane, but reader-facing and role-facing visibility are not separated. | None. Draft visibility boundary is not reconstructible from S1. | Unconfirmed | Documentation, support and product teams may use different meanings of visible. |
| A6 | S1 | Dependency ambiguity | Manual resync and CI/CD resync are documented, but stale-state detection is not. | None. Stale-state detection, warning behavior and update prompts are not reconstructible from S1. | Unconfirmed | Users may not know whether generated API docs match the latest API spec. |

## Contradictions

No explicit contradiction identified in S1.

| ID | Source A | Source B | Conflict | Consequence |
|---|---|---|---|---|
| C1 | Not applicable | Not applicable | No contradiction inside S1 at this stage | Keep open for comparison with additional sources |

## Unconfirmed zones

| ID | Missing information | Why it matters | Related source |
|---|---|---|---|
| U1 | Who can create a new API reference | Determines role-based access and onboarding instructions | S1 |
| U2 | Who can publish generated API documentation | Determines whether generation and publication are the same operational responsibility | S1 |
| U3 | Who can keep generated articles in draft state | Determines review workflow and editorial responsibility | S1 |
| U4 | Who can regenerate or resync an API reference | Determines maintenance ownership | S1 |
| U5 | Whether regeneration can be rolled back | Determines recovery workflow after accidental or incorrect updates | S1 |
| U6 | Whether failed imports can be retried from the same screen | Determines support troubleshooting flow | S1 |
| U7 | How alerts and warnings affect publication | Determines whether warnings block, warn or only inform | S1 |
| U8 | What exact error appears for invalid URL, invalid file, invalid API key or disabled download toggle | Determines whether users can self-diagnose failure | S1 |
| U9 | How custom content is merged with regenerated reference content | Determines content safety during API updates | S1 |
| U10 | Whether webhook limitations are visible to readers or only editors | Determines how Try it limitations should be documented | S1 |

## Main friction

Friction type:

- effort de reconstruction
- opacité des dépendances

Selected friction:

S1 documents multiple creation and maintenance paths for API documentation, but the lifecycle is distributed across file upload, URL import, CI/CD command execution, publish confirmation, draft state, resync, regeneration, custom content retention, download settings and token permissions.

Evidence:

- S1 documents three creation methods: URL, JSON/YAML/YML file and CI/CD.
- S1 documents a publish confirmation step and a draft alternative through Close.
- S1 documents manual resync, CI/CD resync and custom content retention.
- S1 documents several dependencies: OpenAPI version, CLI path, API key validity, portal setting, token permissions and `isPublished` parameter.
- S1 does not document a complete state model, role model, rollback model or error-message model.

Operational consequence:

A reader can follow individual procedures, but cannot reconstruct the full behavior of an API reference across creation, draft, publish, regenerate, resync and download states without extra inference.

Portfolio value:

The case is exploitable because it shows how operational understanding depends on separating visible actions from undocumented state transitions, permission boundaries and dependency behavior.

## Minimal behavior matrix preparation

| Matrix candidate | Behavior IDs | Why it should enter the behavior matrix |
|---|---|---|
| Create from file | E2, E3, E4 | Contains source selection, generated reference creation, publish confirmation and draft alternative. |
| Create from URL | E5 | Contains source dependency and publication path. |
| Create from CI/CD | E6, E7 | Contains CLI, path, API key and key invalidation dependencies. |
| Regenerate / resync | E8, E9 | Contains update behavior, webhook behavior, custom content retention and missing conflict rules. |
| Download API reference | E10 | Contains portal setting dependency and role ambiguity. |
| Try it / 403 | E11, E12 | Contains internal routing and permission-based error behavior. |

## Backlog

| ID | Item | Source | Reason deferred | Suggested later use |
|---|---|---|---|---|
| BL1 | Published status for all available languages through `isPublished` | S1 | Relevant to multilingual publication states, but outside primary API entry workflow | Later case extension on publication-state visibility |
| BL2 | Customer API behavior during portal downtime | S1 | Relevant to reliability, not API documentation generation | Later support or availability case |
| BL3 | Moving endpoint articles between API reference folders | S1 | Relevant to content structure constraints, not initial generation workflow | Later dependency map on API reference folder boundaries |
| BL4 | API documentation article URL collision with knowledge base article URL | S1 | Relevant to URL model, not primary generation workflow | Later routing or information architecture case |
| BL5 | Download articles as PDFs through API endpoints | S1 | Explicit limitation, but outside API reference generation and resync | Later limitation inventory |

## Quality check

- [x] Each extraction line refers to S1.
- [x] States and transitions are separated.
- [x] Permissions are isolated or marked unconfirmed.
- [x] Exceptions are isolated or marked unconfirmed.
- [x] Dependencies are listed separately.
- [x] Ambiguities are separated from documented facts.
- [x] Contradictions are not invented.
- [x] Missing rollback, retry, rule priority, error visibility and user visibility are recorded.
- [x] The file can be transformed directly into `behavior-matrix.md`.
- [x] Phase 1 audit corrections have been applied.
- [ ] Source URL must be validated again before public publication.
