# Vale Behavioral Audit Rules

Behavior-oriented Vale rules for documentation system analysis.

This ruleset is not designed primarily for grammar correction or editorial polishing.

Its purpose is to:
- expose implicit system behavior
- detect ambiguous operational language
- stabilize terminology
- reveal hidden dependencies
- improve behavioral traceability
- reduce cognitive reconstruction effort
- support documentation architecture analysis

---

## Core Principle

The ruleset is modular.

Default rules apply across all documentation audits.

Domain-specific rules are activated only for relevant case folders.

This prevents the ruleset from becoming too fintech-oriented, too SaaS-oriented, or too tied to one product category.

---

## Repository Structure

```text
/
  README.md
  VALE_RULES.md
  .vale.ini

  /styles/
    /BehaviorModel/
    /Terminology/
    /Precision/
    /APIs/
    /Localization/
    /DomainFintech/
    /DomainSaaS/
    /DomainHR/
    /DomainTravel/
    /DomainEnergy/
```

---

## Default Rule Layers

### BehaviorModel

Generic system-behavior rules.

Use for:
- workflows
- state transitions
- conditions
- temporal logic
- side effects
- async behavior
- retries

These rules apply across all domains.

---

### Terminology

Generic terminology-stability rules.

Use for:
- canonical vocabulary
- terminology drift
- abbreviation normalization
- operational vocabulary consistency

---

### Precision

Generic ambiguity-reduction rules.

Use for:
- weak claims
- vague wording
- role/action ambiguity
- permission ambiguity
- marketing language

---

### APIs

Generic technical/API documentation rules.

Use for:
- lifecycle states
- event delivery
- environment behavior
- API-specific workflows

This layer must remain domain-neutral.

Payment-specific terms do not belong here.

---

### Localization

Generic localization and source-language stability rules.

Use for:
- terminology drift
- inclusive terminology
- translation-sensitive source terms
- UI/docs vocabulary alignment

---

## Domain Rule Layers

Domain-specific rules are optional modules.

They are activated only for case folders matching their scope.

### DomainFintech

Use for:
- payments
- refunds
- invoices
- subscriptions
- billing
- payouts
- checkout

### DomainSaaS

Use for:
- workspaces
- organizations
- projects
- environments
- feature flags
- account provisioning
- tenant behavior

### DomainHR

Use for:
- candidates
- applications
- interviews
- hiring stages
- ATS workflows
- recruiter/hiring manager permissions

### DomainTravel

Use for:
- reservations
- bookings
- availability
- cancellations
- guests
- properties
- check-in/check-out

### DomainEnergy

Use for:
- contracts
- meters
- consumption
- tariffs
- billing cycles
- grid connection
- service activation

---

## Configuration Logic

Default case files use:

```ini
BasedOnStyles = BehaviorModel, Terminology, Precision, APIs, Localization
```

Payment or fintech cases add:

```ini
DomainFintech
```

SaaS cases add:

```ini
DomainSaaS
```

HR cases add:

```ini
DomainHR
```

Travel cases add:

```ini
DomainTravel
```

Energy cases add:

```ini
DomainEnergy
```

---

## Design Principle

The rules do not prove correctness automatically.

They trigger focused audit questions.

A Vale warning means:

> This sentence may hide a condition, transition, dependency, role constraint, state, exception, or domain-specific rule.

The human audit remains responsible for interpretation.

---

## Examples

### Generic behavior

Input:

```md
The request is processed asynchronously.
```

Triggers:
- BehaviorModel/AsyncWorkflow.yml

Audit question:
- What is the processing order?
- What is visible to the user while processing?
- What happens if processing fails?

---

### API event delivery

Input:

```md
The event is sent to the configured endpoint.
```

Triggers:
- APIs/EventDelivery.yml
- BehaviorModel/SideEffects.yml

Audit question:
- Is delivery guaranteed?
- What is the payload?
- Is ordering guaranteed?
- Are retries documented?

---

### Fintech-specific behavior

Input:

```md
The payment is captured after authorization.
```

Triggers:
- DomainFintech/PaymentLifecycle.yml
- BehaviorModel/TemporalLogic.yml

Audit question:
- What causes capture?
- Can authorization expire?
- Can capture be partial?
- Which state is visible to each role?

---

### Travel-specific behavior

Input:

```md
Guests can cancel a booking before check-in.
```

Triggers:
- DomainTravel/BookingLifecycle.yml
- Precision/RolePermissions.yml
- BehaviorModel/TemporalLogic.yml

Audit question:
- What is the cancellation window?
- What role can cancel?
- What happens to payment, availability, and notifications?

---

## Non-Goals

This ruleset does not:
- replace human review
- validate full state machines
- enforce complete permission matrices
- replace product specifications
- replace API schema validation
- act as a grammar checker

---

## Usage

Run Vale:

```bash
vale .
```

Run Vale on one file:

```bash
vale cases/fintech-paymentbehaviormodel-payment-behavior-model/README.md
```
