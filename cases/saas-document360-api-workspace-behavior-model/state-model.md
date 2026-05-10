# State Model — Document360

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
    [*] --> draft
    draft --> imported: documented or inferred trigger
    imported --> validated: documented or inferred trigger
    validated --> published: documented or inferred trigger
    published --> restricted: documented or inferred trigger
    restricted --> deprecated: documented or inferred trigger
    deprecated --> archived: documented or inferred trigger
    archived --> failed_import: documented or inferred trigger
    failed_import --> [*]
    validated --> failed: invalid condition or permission
    failed --> draft: correction or retry
```

## Transition audit table

| From state | To state | Required trigger | Actor / system | Documentation check |
|---|---|---|---|---|
| `draft` | `imported` | Must be explicit | Technical writer / system | Verify trigger, timing, and visibility. |
| `imported` | `validated` | Must be explicit | Technical writer / system | Verify trigger, timing, and visibility. |
| `validated` | `published` | Must be explicit | Technical writer / system | Verify trigger, timing, and visibility. |
| `published` | `restricted` | Must be explicit | Technical writer / system | Verify trigger, timing, and visibility. |
| `restricted` | `deprecated` | Must be explicit | Technical writer / system | Verify trigger, timing, and visibility. |
| `deprecated` | `archived` | Must be explicit | Technical writer / system | Verify trigger, timing, and visibility. |
| `archived` | `failed_import` | Must be explicit | Technical writer / system | Verify trigger, timing, and visibility. |

## Invalid transition checks

The documentation should explicitly indicate whether these cases are impossible, blocked, or handled through an exception path:

- action attempted by the wrong role;
- action attempted in the wrong state;
- action attempted before dependency readiness;
- action repeated after completion;
- action performed in a different environment or version.
