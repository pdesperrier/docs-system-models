# Sequence Diagram — PaymentBehaviorModel

## Purpose

This diagram shows the operational path across actors and system components. It is used to detect missing ordering rules, invisible dependencies, and unclear response handling.

```mermaid
sequenceDiagram
    participant A as Finance user
    participant B as Admin
    participant C as Viewer
    participant D as API client
    A->>B: Initiate action on payment validation and approval workflow
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
