# Qonto — Role, Permission, and Payment Behavior Model

## Core friction

Payment and access behavior depends on role, permission scope, authentication state, mandate status, and approval rules.

## Behavioral dependency model

```text
role + permission scope + authentication state + payment workflow -> allowed action -> validation path -> operational outcome
```

## Why this case matters

The documentation explains individual elements clearly, but the operational behavior appears only when multiple conditions are combined.

The reader must reconstruct:
- allowed actions
- required conditions
- state transitions
- blocked paths
- next actions

## Focus

Role-based access, approval workflows, SCA, direct debit mandates, payment eligibility

## Files

```text
README.md
behavior-matrix.md
before-after.md
concept-map.md
recommendations.md
```
