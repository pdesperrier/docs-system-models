# Recommendations

## 1. Introduce a role/action/approval matrix

Current documentation distributes payment behavior across:

- role descriptions
- approval permissions
- transfer workflows
- SCA/2FA setup
- direct debit documentation
- troubleshooting articles

The operational model emerges only when these elements are combined.

Documentation should expose:

```text
role
→ allowed action
→ approval requirement
→ authentication requirement
→ operational consequence
```

This should become a central navigation layer.

---

## 2. Model direct debit collection as a lifecycle

Current documentation explains:

- SCI eligibility
- mandate signature
- collection processing
- refund windows
- settlement timing

in separate places.

The developer or financial operator must reconstruct the actual collection lifecycle manually.

Recommended structure:

```text
eligibility
→ SCI generation
→ mandate request
→ signature state
→ collection processing
→ holding period
→ payout
→ refund window
```

This lifecycle should explicitly expose blocked states and next actions.

---

## 3. Introduce authentication-state branches

Profile updates and sensitive actions currently depend on:

- SCA activation
- phone availability
- email access
- fallback verification
- support intervention

These branches are operationally critical but fragmented.

Documentation should expose:

```text
authentication state
→ available recovery path
→ required verification
→ resulting account capability
```

---

## 4. Connect role descriptions to concrete workflows

Role pages currently describe permissions abstractly.

The documentation should instead expose:

```text
role
→ invoice workflow capability
→ payment workflow capability
→ transfer approval capability
→ card management capability
→ blocked actions
```

This removes the need to infer workflow behavior from isolated permission lists.

---

## 5. Expose blocked states and operational consequences

Many workflows fail because of:

- expired mandate links
- insufficient permissions
- missing SCA
- account ineligibility
- refund timing constraints

These states should expose:

```text
blocked condition
→ operational impact
→ visible symptom
→ recovery action
```

instead of remaining buried in troubleshooting documentation.

---

## 6. Replace feature navigation with behavior navigation

Current navigation prioritizes features.

Operational users actually need:

```text
condition
→ allowed action
→ validation path
→ operational result
```

Documentation should pivot toward executable workflow behavior rather than isolated product capabilities.