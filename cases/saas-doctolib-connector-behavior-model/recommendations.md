# Recommendations — Doctolib

## Priority 1 — Centralize the behavior model

Create a dedicated behavior page for:

```text
connector synchronization and ownership behavior
```

This page should connect:

- actor;
- role;
- condition;
- state;
- exception;
- dependency;
- observable outcome;
- next action.

## Priority 2 — Add lifecycle and sequence diagrams

Use:

- [state-model.md](state-model.md)
- [sequence-diagram.md](sequence-diagram.md)

The diagrams should make state transitions, async behavior, and blocked paths visible.

## Priority 3 — Add a decision matrix

Use:

- [behavior-matrix.md](behavior-matrix.md)

The matrix should prevent readers from reconstructing role/state/condition behavior across multiple pages.

## Priority 4 — Integrate exceptions into the main workflow

Exceptions should not live only in troubleshooting.

They should appear directly where the user makes the decision or performs the action.

## Priority 5 — Add traceability

Each behavioral rule should be traceable to:

- source page;
- product concept;
- affected role;
- state transition;
- expected outcome;
- related exception.

## Expected impact

- Create a synchronization behavior matrix.
- Model ownership authority and external identifier dependencies.
- Add duplicate-resolution and conflict-state diagrams.
