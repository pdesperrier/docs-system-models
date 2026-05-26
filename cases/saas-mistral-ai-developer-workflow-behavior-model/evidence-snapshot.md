# Evidence Snapshot — SaaS Mistral AI Developer Workflow Behavior Model

This file contains a portfolio-safe snapshot of visible evidence.

It is not a full evidence registry.

## Scope

How Mistral AI Libraries move an uploaded document from upload to processing status and retrieval-ready use in document search.

## Source list

| Source | URL | Surface | Evidence class | Why it matters |
|---|---|---|---|---|
| Libraries | https://docs.mistral.ai/studio-api/knowledge-rag/libraries | API and workflow documentation | STRONG | Defines Library behavior, document status checks, and processing status examples. |
| Set up RAG with document search | https://docs.mistral.ai/getting-started/quickstarts/developer/rag-document-search | Developer quickstart | MEDIUM | Defines a developer path from Library/document setup to retrieval-grounded chat completion. |

## Evidence summary

| Evidence ref | Evidence class | Scope | Public-safe wording | Notes |
|---|---|---|---|---|
| E-REF-001 | MEDIUM | RAG quickstart | The quickstart frames document search as uploading documents to a Library and querying them in a chat completion. | Workflow-level behavior. |
| E-REF-002 | MEDIUM | Library object | A Library is documented as a container for documents the model can search during conversations. | Object boundary. |
| E-REF-003 | STRONG | Document status | After upload, document processing status can be checked. | Explicit status operation. |
| E-REF-004 | STRONG | Processing transition | Processing status is documented as Running while processing and Completed once ready. | Visible lifecycle transition. |
| E-REF-005 | MEDIUM | Retrieval behavior | Document search retrieves relevant passages from uploaded documents and grounds answers in the user content. | Use-stage behavior, not a guarantee of completeness. |

## Visible behaviors

| Object | Visible behavior | Evidence refs | Reconstruction note |
|---|---|---|---|
| Library | Acts as a container for documents used during conversations. | E-REF-002 | Object boundary is visible. |
| Document upload | A document can be uploaded into the workflow for retrieval use. | E-REF-001 | Upload is visible at quickstart level. |
| Processing status | Document status can be checked after upload. | E-REF-003 | Status operation is reconstructible. |
| Status transition | Running indicates processing; Completed indicates readiness. | E-REF-004 | Simple lifecycle is reconstructible. |
| Document search | Relevant passages can be retrieved and used to ground answers. | E-REF-005 | Use-stage behavior is visible but not exhaustive. |

## Missing or implicit behaviors

| Missing or implicit behavior | Why it matters | Reconstruction effort |
|---|---|---|
| Failure states other than Running and Completed. | Production workflows need failed, partial, timeout, or invalid-file semantics. | High |
| Retry behavior after failed or stalled processing. | Developers need recovery paths. | High |
| Exact readiness guarantee attached to Completed. | Completed may not prove retrieval quality, chunking completeness, or freshness. | High |
| Access control behavior for Libraries and documents. | Retrieval context may depend on workspace or API key boundaries. | Medium |
| Deletion or update behavior after a document has been used for retrieval. | Freshness and stale-answer risk require lifecycle behavior. | High |

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
