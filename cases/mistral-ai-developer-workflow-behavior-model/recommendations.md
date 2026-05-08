# Recommendations

## 1. Create an end-to-end developer runtime page

Current documentation distributes operational behavior across:

- quickstarts
- API reference
- workspaces
- billing
- files
- RAG
- agents
- tool calling
- errors
- limits

Developers reconstruct the runtime path manually.

Recommended structure:

```text
workspace
→ API key
→ endpoint selection
→ request
→ tool/file/RAG behavior
→ runtime result
→ retry/error path
```

This should become the primary onboarding flow.

---

## 2. Model tool calling as a loop

Tool calling is currently easy to misunderstand because the execution loop is distributed across examples and reference documentation.

Documentation should explicitly expose:

```text
model request
→ tool_calls response
→ local tool execution
→ tool result injection
→ final completion
```

The loop structure should be visible as a runtime behavior model.

---

## 3. Model RAG as a document lifecycle

RAG behavior currently depends on:

- file upload
- processing status
- embedding availability
- retrieval configuration
- prompt injection
- citation behavior

These relationships should be documented together.

Recommended structure:

```text
file upload
→ processing
→ retrieval availability
→ grounded generation
→ verification
→ lifecycle cleanup
```

---

## 4. Connect API keys to workspace and billing state

API failures often depend on:

- workspace activation
- billing status
- spending limits
- rate limits
- invalid or stale keys

These conditions are operationally connected but structurally fragmented.

Documentation should expose:

```text
workspace state
+ billing state
+ API key state
→ request capability
→ possible error responses
```

---

## 5. Create a runtime error and retry matrix

Current error documentation explains status codes locally.

Developers need operational guidance:

```text
error type
→ retryability
→ required delay
→ operational consequence
→ recovery strategy
```

This is especially important for:

- 429 responses
- transient 5xx errors
- quota exhaustion
- timeout behavior
- streaming interruptions

---

## 6. Explicitly document rate-limit and quota behavior

Current rate-limit documentation does not always expose the operational consequences clearly.

Documentation should expose:

```text
workspace limit
→ quota exhaustion
→ returned behavior
→ retry validity
→ required operator action
```

This prevents ineffective retry strategies.

---

## 7. Connect file lifecycle behavior across endpoints

File behavior currently depends on:

- upload purpose
- retention state
- endpoint compatibility
- visibility rules
- deletion behavior

These relationships remain fragmented.

Documentation should expose:

```text
file state
→ endpoint availability
→ retrieval behavior
→ retention impact
→ downstream operational consequence
```

---

## 8. Align quickstarts with troubleshooting states

Quickstarts currently optimize for successful execution paths.

Operational onboarding should also expose:

- missing billing
- invalid keys
- rate-limit behavior
- unsupported model features
- malformed tool schemas
- missing file-processing states

The onboarding model should include failure prediction.

---

## 9. Replace feature-centric navigation with runtime-centric navigation

Current navigation prioritizes isolated capabilities.

Developers actually need:

```text
condition
→ runtime capability
→ expected response
→ operational limit
→ recovery path
```

Documentation should pivot toward executable runtime behavior instead of disconnected features.