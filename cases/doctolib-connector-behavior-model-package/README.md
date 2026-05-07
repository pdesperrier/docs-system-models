# Doctolib — Connector Synchronization Behavior Model

## Core friction

Synchronization behavior depends simultaneously on:

- connector type
- synchronization direction
- patient ownership state
- external identifiers
- runtime activation
- organization scope

These relationships remain fragmented across troubleshooting, synchronization, duplicate-handling, and connector setup documentation.

---

## Behavioral dependency model

```text
connector type
+ synchronization direction
+ ownership authority
+ external identifier
+ runtime activation
→ synchronization behavior
→ modification capability
→ troubleshooting outcome
```

---

## Example friction

A practitioner modifies patient information in the external medical software.

The update synchronizes for some patients but not others.

The root cause may depend on:

- Doctolib account ownership
- CNIL ownership constraints
- connector activation state
- external identifiers
- synchronization direction

The documentation explains these independently.

---

## Recommended transformation

### Replace subsystem navigation with synchronization navigation

Current structure:

```text
Connector setup
Synchronization
Duplicate handling
Ownership rules
Troubleshooting
```

Recommended structure:

```text
connector type
→ synchronization direction
→ ownership authority
→ external identifiers
→ runtime activation
→ expected synchronization result
→ failure conditions
```

---

## Key outputs

- synchronization behavior matrix
- ownership authority model
- connector activation dependency map
- duplicate-resolution workflow
- before/after documentation architecture
