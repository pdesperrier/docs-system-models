# Recommendations

## 1. Introduce synchronization-centric navigation

Current documentation distributes synchronization behavior across setup, troubleshooting, ownership, and duplicate-handling articles.

---

## 2. Explicitly model ownership authority

Document:

```text
patient ownership
→ modification authority
→ synchronization capability
```

---

## 3. Consolidate duplicate-resolution behavior

Duplicate handling depends on:

- external identifiers
- connector synchronization
- Vitale associations
- ownership rules

These dependencies should be modeled together.

---

## 4. Introduce runtime dependency matrices

Document:

```text
connector type + startup order + organization scope
→ activation behavior
```
