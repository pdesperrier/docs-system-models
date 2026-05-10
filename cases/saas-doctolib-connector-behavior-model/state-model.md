# State Model — Doctolib

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
    [*] --> not_connected
    not_connected --> connected: documented or inferred trigger
    connected --> active: documented or inferred trigger
    active --> sync_pending: documented or inferred trigger
    sync_pending --> synced: documented or inferred trigger
    synced --> conflict: documented or inferred trigger
    conflict --> duplicate_detected: documented or inferred trigger
    duplicate_detected --> failed: documented or inferred trigger
    failed --> [*]
    active --> failed: invalid condition or permission
    failed --> not_connected: correction or retry
```

## Transition audit table

| From state | To state | Required trigger | Actor / system | Documentation check |
|---|---|---|---|---|
| `not_connected` | `connected` | Must be explicit | Practitioner / system | Verify trigger, timing, and visibility. |
| `connected` | `active` | Must be explicit | Practitioner / system | Verify trigger, timing, and visibility. |
| `active` | `sync_pending` | Must be explicit | Practitioner / system | Verify trigger, timing, and visibility. |
| `sync_pending` | `synced` | Must be explicit | Practitioner / system | Verify trigger, timing, and visibility. |
| `synced` | `conflict` | Must be explicit | Practitioner / system | Verify trigger, timing, and visibility. |
| `conflict` | `duplicate_detected` | Must be explicit | Practitioner / system | Verify trigger, timing, and visibility. |
| `duplicate_detected` | `failed` | Must be explicit | Practitioner / system | Verify trigger, timing, and visibility. |

## Invalid transition checks

The documentation should explicitly indicate whether these cases are impossible, blocked, or handled through an exception path:

- action attempted by the wrong role;
- action attempted in the wrong state;
- action attempted before dependency readiness;
- action repeated after completion;
- action performed in a different environment or version.
