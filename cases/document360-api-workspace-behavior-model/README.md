# Document360 — API Workspace and Content Lifecycle Behavior Model

## Core friction

Content and API behavior depends on workspace, editor state, import method, access settings, and dependency state.

## Behavioral dependency model

```text
workspace + content type + editor state + access setting + import method -> publication behavior -> reader/developer outcome
```

## Why this case matters

The documentation explains individual elements clearly, but the operational behavior appears only when multiple conditions are combined.

The reader must reconstruct:
- allowed actions
- required conditions
- state transitions
- blocked paths
- next actions

## Focus

API workspaces, OpenAPI import, Try It, editor switching, Drive dependencies, analytics, access behavior

## Files

```text
README.md
behavior-matrix.md
before-after.md
concept-map.md
recommendations.md
```
