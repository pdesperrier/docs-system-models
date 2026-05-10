# Sequence Diagram — Atlassian

## Purpose

This diagram shows the operational path across actors and system components. It is used to detect missing ordering rules, invisible dependencies, and unclear response handling.

```mermaid
sequenceDiagram
    participant A as App developer
    participant B as Workspace admin
    participant C as End user
    participant D as Runtime host
    A->>B: Initiate action on extension runtime behavior across targets and environments
    B->>C: Validate role, state, configuration, and dependency
    alt Valid conditions
        C-->>B: Return allowed transition
        B-->>D: Propagate event or runtime effect
        D-->>A: Expose observable outcome or next action
    else Invalid or incomplete conditions
        C-->>B: Return blocked, failed, or pending path
        B-->>A: Explain failure reason and recovery action
    end
```

## Audit questions

- Is the first required action explicit?
- Is the validation point visible?
- Is the success path separated from the failure path?
- Is asynchronous behavior documented?
- Is the next action observable for the right role?
- Is the downstream effect documented in the same workflow?
