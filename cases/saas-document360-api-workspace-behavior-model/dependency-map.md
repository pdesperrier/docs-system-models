# Dependency map

## Case

Case folder: `05_portfolio/cases/saas-document360-api-workspace-behavior-model/`

Source:

- S1: `source-excerpts/document360-managing-api-documentation.md`

Input artifacts:

- `source-log.md`
- `extraction-notes.md`
- `behavior-matrix.md`

## Scope

This dependency map consolidates dependencies visible in S1 through the corrected extraction and behavior matrix.

It does not infer:

- undocumented retry behavior;
- undocumented rollback behavior;
- undocumented permission inheritance;
- undocumented URL reachability validation;
- undocumented download behavior when the toggle is off;
- undocumented conflict resolution between generated API content and custom content.

## Dependency table

| Dependency ID | Matrix IDs | From | To | Dependency type | Documented relation | Source | Certainty | Operational consequence |
|---|---|---|---|---|---|---|---|---|
| D1 | BM1, BM2, BM5, BM6 | API specification source | Generated API documentation | Generation dependency | API documentation can be generated from URL, JSON/YAML/YML file or CI/CD flow. | S1 | Documented | The generated documentation depends on the selected source path. File, URL and CI/CD branches must remain separate. |
| D2 | BM2, BM3, BM4 | New API reference | Publish confirmation / draft state | Workflow transition | After creating a new API reference from a file, the user reaches publish confirmation. Clicking `Publish` generates documentation; clicking `Close` keeps generated articles in draft state. | S1 | Documented | Creation, publication and draft are separate behaviors. They cannot be collapsed into one generation step. |
| D3 | BM5 | URL field | Generated API documentation from URL source | Source dependency | The user enters a URL for the API specification file, clicks `Add API reference`, then clicks `Publish`. | S1 | Documented, URL validation unconfirmed | URL-based generation is documented, but URL reachability, validation failure and retry behavior are not reconstructible from S1. |
| D4 | BM6 | CI/CD Flow command | API documentation generation | Configuration dependency | The user selects `CI/CD Flow`, copies the command, updates `--path`, runs it in terminal, and the API specification file is uploaded and generated. | S1 | Documented, credential and failure behavior unconfirmed | CI/CD generation depends on local tooling and command values, but the role model and failure model remain hidden. |
| D5 | BM7 | Regenerated API key | Existing CLI command validity | Key validity dependency | If the API key is regenerated, the old key is no longer valid and `--apiKey` must be updated before running the command again. | S1 | Documented, role boundary unconfirmed | CI/CD behavior depends on key validity, but who can access or regenerate the key is not reconstructible from S1. |
| D6 | BM8, BM9 | OpenAPI 3.1 webhooks | Webhook display and resync behavior | Spec feature dependency | When an OpenAPI 3.1 spec includes webhooks, Document360 imports them, shows an event icon, displays payload schema and example, includes them in resync operations, and does not make `Try it` available for webhooks. | S1 | Documented, limitation surface unconfirmed | Webhook behavior depends on spec content, but the visible limitation model is incomplete. |
| D7 | BM9 | Regeneration / resync | Custom content retention | Preservation dependency | Custom content added to API documentation is retained when API documentation is regenerated. | S1 | Documented, merge and conflict rules unconfirmed | Regeneration appears to preserve custom content, but overwrite, merge, collision and rollback behavior are not reconstructible from S1. |
| D8 | BM10 | `Show download API reference` toggle | Download API reference behavior | Setting dependency | To download API files, the `Show download API reference` toggle in the Knowledge base portal settings must be turned on. | S1 | Documented dependency, off-state behavior unconfirmed | Download depends on a portal setting, but S1 does not describe the disabled state, hidden state, error state or role boundary. |
| D9 | BM11 | `Try it & see response` action | `tryit.document360.io` routing | Runtime routing dependency | When the user clicks `Try it & see response`, the request URL includes `tryit.document360.io` prepended to the API base URL. | S1 | Documented, security and failure behavior unconfirmed | Support can explain the URL prefix, but S1 does not document the full permission, security or failure model. |
| D10 | BM12 | API token POST permission | 403 behavior | Permission dependency | A 403 error occurs when the API token used does not have the required permission to make a POST request. | S1 | Documented, remediation path unconfirmed | Token permission is a documented cause of POST failure, but the token setting path and exact error payload remain unconfirmed. |
| D11 | BM12 | API token settings | POST retry possibility | Recovery dependency | The source says to ensure the API token has the necessary permissions and try again. | S1 | Partially documented, detailed retry flow unconfirmed | S1 gives a high-level recovery instruction, but does not document the exact retry state or UI/API remediation path. |
| D12 | Backlog / BL1 | `isPublished` parameter | Available language states | Retrieval dependency | `isPublished=false` returns every language the article exists in, including languages that only have a draft and have never been published. | S1 | Documented, outside primary scope | This dependency is branch-local to retrieval behavior and should not be merged into the primary API generation workflow. |

## Dependency groups

### 1. Generation dependencies

```text
[API specification source]
  ↓
[File upload] / [URL] / [CI/CD Flow]
  ↓
[Generated API documentation]
```

Related dependencies:

- D1
- D3
- D4

Unconfirmed:

- malformed file behavior;
- unsupported spec behavior;
- URL validation failure;
- CI/CD failure behavior;
- role permissions for generation.

### 2. Publication and draft dependencies

```text
[New API reference]
  ↓
[Publish confirmation]
  ↙                  ↘
[Close]              [Publish]
  ↓                  ↓
[Draft state]        [Published API documentation]
```

Related dependency:

- D2

Unconfirmed:

- who can publish;
- who can keep generated articles in draft;
- who can view draft content;
- reader-facing visibility after publication.

### 3. CI/CD and key validity dependencies

```text
[CI/CD Flow command]
  ↓ depends on
[`--path` value]
  ↓ also affected by
[API key validity]
```

Related dependencies:

- D4
- D5

Unconfirmed:

- who can access the command;
- who can regenerate the API key;
- what error appears when the old key is used;
- whether the same command can be retried after correction.

### 4. Regeneration and preservation dependencies

```text
[Existing API reference]
  ↓ resync / update / regenerate
[Regenerated API documentation]
  ↓ preserves
[Custom content]
```

Related dependency:

- D7

Unconfirmed:

- merge rules;
- overwrite rules;
- collision rules;
- rollback behavior;
- conflict priority between generated API content and custom content.

### 5. Webhook dependencies

```text
[OpenAPI 3.1 spec includes webhooks]
  ↓
[Webhook imported]
  ↓
[Event icon + payload schema + example]
  ↓
[Included in resync]
  ↓
[Try it unavailable]
```

Related dependency:

- D6

Unconfirmed:

- whether the limitation is visible to readers, editors or both;
- whether an explanatory message appears;
- what alternative workflow is expected.

### 6. Download dependencies

```text
[API reference exists]
  ↓
[Show download API reference toggle turned on]
  ↓
[Download API reference]
```

Related dependency:

- D8

Unconfirmed:

- behavior when toggle is off;
- whether the option is hidden, disabled or returns an error;
- who can turn the setting on;
- who can download.

### 7. Try it and permission dependencies

```text
[Try it & see response]
  ↓
[tryit.document360.io routing]

[API token lacks POST permission]
  ↓
[403 error]
```

Related dependencies:

- D9
- D10
- D11

Unconfirmed:

- security boundary;
- permission model for Try it;
- error payload;
- full remediation path.

## Minimal ASCII map

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

[OpenAPI 3.1 webhooks]
  ↓
[Webhook display + resync inclusion]
  ↳ Try it unavailable

[Portal setting]
  ↓
[Show download API reference]
  ↓
[Download API reference]
  ↳ off-state behavior unconfirmed

[API token POST permission]
  ↓
[403 error]
  ↳ remediation path incomplete
```

## Unconfirmed dependencies

| ID | Dependency area | Missing behavior | Related dependencies | Operational consequence |
|---|---|---|---|---|
| U-D1 | Role model | Who can create, publish, close, regenerate, resync, download or manage API keys is not specified. | D1, D2, D4, D5, D8 | Permission fields cannot be completed without another source. |
| U-D2 | URL validation | URL reachability, invalid URL handling and retry behavior are not specified. | D3 | URL branch cannot be fully reconstructed as an error-handling workflow. |
| U-D3 | CI/CD failure | Invalid `--path`, invalid key, missing Node.js, CLI failure and bad spec behavior are not specified. | D4, D5 | CI/CD troubleshooting remains incomplete. |
| U-D4 | Draft / publish visibility | Reader-facing and role-facing visibility of draft and published output are not fully separated. | D2 | Onboarding and support may describe visibility differently. |
| U-D5 | Regeneration safety | Merge, overwrite, collision, rollback and priority rules are not specified. | D7 | Teams cannot predict what survives regeneration without testing. |
| U-D6 | Download off-state | Behavior when the `Show download API reference` toggle is off is not specified. | D8 | Access troubleshooting cannot be reconstructed from S1. |
| U-D7 | Webhook limitation surface | Visibility of the `Try it` limitation and expected alternative workflow are not specified. | D6 | Reader/editor experience remains incomplete. |
| U-D8 | Try it failure model | Security, permission and failure behavior for `tryit.document360.io` routing are not specified. | D9 | Support can explain the prefix, not the full runtime behavior. |
| U-D9 | API token remediation | Exact token setting path and error payload for 403 are not specified. | D10, D11 | Recovery remains partially documented. |
| U-D10 | Multilingual retrieval integration | `isPublished` behavior is documented but not integrated into the primary generation lifecycle. | D12 | This branch should remain peripheral or become a separate case extension. |

## Main dependency visibility issue

S1 makes several local dependencies visible, but does not connect them into a complete operational model.

The strongest documented dependencies are:

- source type → generated API documentation;
- New API reference → publish confirmation / draft state;
- CI/CD command → `--path` and API key validity;
- OpenAPI 3.1 webhooks → webhook display and resync inclusion;
- regeneration → custom content retention;
- portal toggle → download API reference;
- API token permission → 403 error.

The weakest or unconfirmed dependencies are:

- role-to-action mapping;
- URL validation and retry;
- CI/CD failure recovery;
- draft and published visibility;
- custom content conflict behavior;
- download off-state behavior;
- webhook limitation visibility;
- Try it security and failure behavior.

## Quality check

- [x] Only S1 is used as source.
- [x] References to non-S1 sources have been removed.
- [x] File, URL and CI/CD branches remain separate.
- [x] Publish and draft remain separate.
- [x] CI/CD generation and CI/CD resync are not merged.
- [x] No URL reachability behavior is inferred.
- [x] No download off-state behavior is inferred.
- [x] No retry behavior is inferred except the partial 403 instruction explicitly documented in S1.
- [x] No rollback behavior is inferred.
- [x] No permission inheritance is inferred.
- [x] Unconfirmed dependencies remain visible.
- [x] The map can be used to generate `main-friction.md`.
