# Concept Map — Document360

## Core model

```text
workspace + content type + editor state + access setting + import method
```

## Concept map

```mermaid
flowchart TD
    A[API workspace and content publication lifecycle]
    B[Actors and roles]
    C[Permissions and visibility]
    D[Lifecycle states]
    E[Conditions and prerequisites]
    F[Exceptions and blocked paths]
    G[Downstream effects]
    H[Documentation page or section]

    B --> C
    C --> A
    E --> A
    A --> D
    D --> F
    D --> G
    H --> B
    H --> C
    H --> D
    H --> E
    H --> F
```

## Dependency list

- API workspace and content publication lifecycle
- actors
- roles / permissions
- states
- conditions
- exceptions
- dependencies
- downstream effects

## Audit use

The map is used to check whether the documentation explains concepts as connected behavior or as isolated vocabulary.
