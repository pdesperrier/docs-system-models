# State Model — Qonto

## Purpose

This file makes lifecycle behavior explicit. It separates a listed status from a modeled transition.

A status name is not enough. A useful state model must identify:

- entry trigger;
- exit trigger;
- actor;
- visibility;
- allowed next states;
- invalid transitions;
- exception paths.

## State diagram

```mermaid
stateDiagram-v2
    [*] --> not_started
    not_started --> eligible: documented or inferred trigger
    eligible --> requires_sca: documented or inferred trigger
    requires_sca --> requires_approval: documented or inferred trigger
    requires_approval --> approved: documented or inferred trigger
    approved --> submitted: documented or inferred trigger
    submitted --> rejected: documented or inferred trigger
    rejected --> blocked: documented or inferred trigger
    blocked --> [*]
    requires_sca --> failed: invalid condition or permission
    failed --> not_started: correction or retry
```

## Transition audit table

| From state | To state | Required trigger | Actor / system | Documentation check |
|---|---|---|---|---|
| `not_started` | `eligible` | Must be explicit | Owner / system | Verify trigger, timing, and visibility. |
| `eligible` | `requires_sca` | Must be explicit | Owner / system | Verify trigger, timing, and visibility. |
| `requires_sca` | `requires_approval` | Must be explicit | Owner / system | Verify trigger, timing, and visibility. |
| `requires_approval` | `approved` | Must be explicit | Owner / system | Verify trigger, timing, and visibility. |
| `approved` | `submitted` | Must be explicit | Owner / system | Verify trigger, timing, and visibility. |
| `submitted` | `rejected` | Must be explicit | Owner / system | Verify trigger, timing, and visibility. |
| `rejected` | `blocked` | Must be explicit | Owner / system | Verify trigger, timing, and visibility. |

## Invalid transition checks

The documentation should explicitly indicate whether these cases are impossible, blocked, or handled through an exception path:

- action attempted by the wrong role;
- action attempted in the wrong state;
- action attempted before dependency readiness;
- action repeated after completion;
- action performed in a different environment or version.
