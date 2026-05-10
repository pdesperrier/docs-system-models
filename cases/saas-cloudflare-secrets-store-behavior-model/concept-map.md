# Concept Map — Cloudflare

## Core model

```text
actor + permission + secret state + integration + environment
```

## Concept map

```mermaid
flowchart TD
    A[Secrets Store lifecycle, bindings, runtime access, and BYOK behavior]
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

- Secrets Store lifecycle, bindings, runtime access, and BYOK behavior
- actors
- roles / permissions
- states
- conditions
- exceptions
- dependencies
- downstream effects

## Audit use

The map is used to check whether the documentation explains concepts as connected behavior or as isolated vocabulary.
