# Concept Map — Shopify

## Core model

```text
client type + discovery endpoint + auth parameters + token exchange + GraphQL response pattern
```

## Concept map

```mermaid
flowchart TD
    A[Customer Account API authentication and GraphQL response behavior]
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

- Customer Account API authentication and GraphQL response behavior
- actors
- roles / permissions
- states
- conditions
- exceptions
- dependencies
- downstream effects

## Audit use

The map is used to check whether the documentation explains concepts as connected behavior or as isolated vocabulary.
