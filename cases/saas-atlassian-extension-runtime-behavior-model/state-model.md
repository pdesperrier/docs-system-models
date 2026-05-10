# State Model — Atlassian

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
    [*] --> created
    created --> configured: documented or inferred trigger
    configured --> deployed: documented or inferred trigger
    deployed --> installed: documented or inferred trigger
    installed --> available: documented or inferred trigger
    available --> partially_available: documented or inferred trigger
    partially_available --> failed: documented or inferred trigger
    failed --> disabled: documented or inferred trigger
    disabled --> [*]
    deployed --> failed: invalid condition or permission
    failed --> created: correction or retry
```

## Transition audit table

| From state | To state | Required trigger | Actor / system | Documentation check |
|---|---|---|---|---|
| `created` | `configured` | Must be explicit | App developer / system | Verify trigger, timing, and visibility. |
| `configured` | `deployed` | Must be explicit | App developer / system | Verify trigger, timing, and visibility. |
| `deployed` | `installed` | Must be explicit | App developer / system | Verify trigger, timing, and visibility. |
| `installed` | `available` | Must be explicit | App developer / system | Verify trigger, timing, and visibility. |
| `available` | `partially_available` | Must be explicit | App developer / system | Verify trigger, timing, and visibility. |
| `partially_available` | `failed` | Must be explicit | App developer / system | Verify trigger, timing, and visibility. |
| `failed` | `disabled` | Must be explicit | App developer / system | Verify trigger, timing, and visibility. |

## Invalid transition checks

The documentation should explicitly indicate whether these cases are impossible, blocked, or handled through an exception path:

- action attempted by the wrong role;
- action attempted in the wrong state;
- action attempted before dependency readiness;
- action repeated after completion;
- action performed in a different environment or version.
