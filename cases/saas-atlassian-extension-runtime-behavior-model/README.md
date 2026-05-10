# Atlassian — Extension Runtime Behavior Model

## Core friction

Extension behavior depends simultaneously on:

- extension target
- runtime environment
- deployment state
- permission scope
- rendering constraints
- authentication context

These relationships remain distributed across separate documentation areas.

---

## Behavioral dependency model

```text
extension target
+ runtime environment
+ deployment state
+ permission scope
+ authentication context
→ available APIs
→ rendering behavior
→ operational limitations
```

---

## Example friction

A developer deploys an extension successfully.

The extension:

- appears installed
- loads partially
- fails in specific rendering targets
- behaves differently between environments

The root cause may depend on:

- runtime sandbox behavior
- deployment synchronization
- permission propagation
- unsupported UI capabilities
- authentication context

The documentation explains these independently.

---

## Recommended transformation

### Replace subsystem navigation with runtime navigation

Current structure:

```text
Permissions
Runtime APIs
Deployment
Rendering constraints
Extension targets
```

Recommended structure:

```text
extension target
→ runtime environment
→ permissions
→ deployment conditions
→ rendering constraints
→ available APIs
→ expected behavior
```

---

## Key outputs

- runtime behavior matrix
- deployment transition model
- permission propagation analysis
- rendering constraint model
- before/after documentation architecture
