# VALE_RULES.md

## Vale Behavioral Audit Rules

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

## Philosophy

Traditional documentation linting focuses mainly on:
- grammar
- readability
- punctuation
- writing style

This ruleset focuses instead on:
- workflows
- conditions
- state transitions
- operational precision
- behavioral consistency
- role/action visibility
- dependency traceability

The objective is to treat documentation as a behavioral model of the system.

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
```

---

## Rule Categories

### BehaviorModel

Purpose:
detect implicit or partially documented system behavior.

Focus:
- state transitions
- conditions
- workflow logic
- temporal dependencies
- side effects
- propagation effects
- asynchronous behavior

Typical issues detected:
- undocumented retries
- implicit execution order
- invisible transitions
- missing rollback behavior
- undefined intermediate states

Examples:
- pending
- processing
- eventually
- triggers
- propagates

Associated rules:
- BehaviorModel.yml
- StateTransitions.yml
- TemporalLogic.yml
- ConditionalLogic.yml
- SideEffects.yml

---

### Terminology

Purpose:
maintain stable conceptual vocabulary across the documentation system.

Focus:
- canonical terminology
- vocabulary normalization
- reduction of terminology drift
- operational consistency

Typical issues detected:
- multiple terms for the same object
- inconsistent product naming
- ambiguous abbreviations
- unstable UI vocabulary

Examples:
- app → application
- auth → authentication
- config → configuration

Associated rules:
- Terminology.yml
- OperationalVocabulary.yml

---

### Precision

Purpose:
reduce ambiguity and unverifiable operational language.

Focus:
- vague wording
- weak claims
- role ambiguity
- undefined operational scope
- marketing language

Typical issues detected:
- “simple”
- “easy”
- “seamless”
- “quickly”
- “manage”
- “handle”

Examples:
Bad:
- “The system easily handles retries.”

Better:
- “The API retries failed requests automatically up to three times.”

Associated rules:
- WeakClaims.yml
- ForbiddenWords.yml
- RoleActionPrecision.yml

---

## Severity Levels

The ruleset uses Vale severity levels strategically.

### suggestion

Low-impact informational guidance.

Used rarely.

---

### warning

Potential ambiguity or incomplete behavioral modeling.

Examples:
- undocumented state
- implicit condition
- vague operational wording

---

### error

High-risk ambiguity or misleading terminology.

Examples:
- forbidden wording
- marketing language
- operationally misleading claims

---

## Rule Design Principles

The rules are intentionally:
- lightweight
- behavior-focused
- operational
- maintainable

The objective is not to create a massive enterprise ruleset.

The objective is to:
- surface hidden complexity
- expose implicit logic
- improve traceability
- strengthen behavioral consistency

---

## Examples

### Example 1 — Weak claim

Input:

```md
The system quickly processes payments.
```

Result:
- “quickly” triggers WeakClaims.yml

Reason:
“quickly” is not measurable.

---

### Example 2 — Implicit condition

Input:

```md
In some cases, the webhook may be delayed.
```

Result:
- “in some cases” triggers ConditionalLogic.yml

Reason:
condition is undefined.

---

### Example 3 — State transition

Input:

```md
The payment becomes pending before validation.
```

Result:
- “pending”
- “before”

Triggers:
- StateTransitions.yml
- TemporalLogic.yml

Reason:
the sentence describes a state transition and execution order.

---

### Example 4 — Operational ambiguity

Input:

```md
Admins can manage subscriptions.
```

Result:
- “Admins”
- “manage”

Triggers:
- RoleActionPrecision.yml
- OperationalVocabulary.yml

Reason:
the action scope is undefined.

---

## Scope

The ruleset is designed primarily for:
- SaaS documentation
- API documentation
- onboarding workflows
- operational procedures
- system behavior analysis
- configuration workflows
- cross-product interactions

---

## Non-Goals

This ruleset is not intended to:
- enforce generic marketing writing
- maximize readability scores
- replace editorial review
- perform deep linguistic analysis
- act as a grammar checker

---

## Usage

### Run Vale

```bash
vale .
```

---

### Run Vale on a specific file

```bash
vale docs/payment-flow.md
```

---

### Run Vale on Markdown files only

```bash
vale "*.md"
```

---

## Configuration

The `.vale.ini` file defines:
- active styles
- severity threshold
- file scope
- linting targets

Example:

```ini
StylesPath = styles

MinAlertLevel = warning

[README.md]
BasedOnStyles = BehaviorModel, Terminology, Precision

[cases/**/*.md]
BasedOnStyles = BehaviorModel, Terminology, Precision
```

---

## Future Extensions

Potential future additions:
- API state consistency validation
- async workflow detection
- retry policy checks
- localization drift detection
- webhook terminology validation
- role/permission matrix enforcement
- environment-specific behavior checks

---

## Positioning

This ruleset supports a documentation approach centered on:
- behavioral modeling
- operational traceability
- dependency visibility
- documentation architecture
- cognitive reconstruction reduction

The documentation is treated as:
- a system model
- a behavioral surface
- a traceability layer
- an operational reference
- a dependency map