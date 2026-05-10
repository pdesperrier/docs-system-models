# Concept Map — Doctolib

## Core model

```text
connector type + synchronization direction + ownership authority + external identifier + runtime activation
```

## Concept map

```mermaid
flowchart TD
    A[connector synchronization and ownership behavior]
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

- connector synchronization and ownership behavior
- actors
- roles / permissions
- states
- conditions
- exceptions
- dependencies
- downstream effects

## Audit use

The map is used to check whether the documentation explains concepts as connected behavior or as isolated vocabulary.
