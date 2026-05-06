# Behavior Model

## Purpose

A behavior model makes explicit how a product behaves across conditions.

It is useful when documentation explains individual components but does not show how they interact.

## Core structure

```text
condition + role + state + action → result + event + next action
```

## When to use it

Use a behavior model when the product behavior depends on:

- user role
- account status
- plan or subscription level
- configuration
- previous state
- feature flag
- API response
- webhook event
- approval rule
- integration status

## Typical documentation gaps

A behavior model is useful when documentation contains one or more of these patterns:

| Pattern | Symptom | Documentation risk |
|---|---|---|
| Role-dependent behavior | Same action behaves differently by role | user misreads permissions |
| State-dependent behavior | Same endpoint returns different status by state | developer cannot anticipate outcome |
| Condition-dependent workflow | Threshold or configuration changes the flow | incomplete implementation |
| Event-driven behavior | Webhooks are listed but not mapped to scenarios | incorrect event handling |
| Fragmented exception logic | edge cases live in FAQs or support docs | high support dependency |

## Model template

| Condition | Role | State/Input | Action | Expected behavior | System output | Event/Webhook | Next action |
|---|---|---|---|---|---|---|---|
|  |  |  |  |  |  |  |  |

## Example

```text
Finance user + €8,000 payment + approval threshold exceeded
→ payment status: requires_approval
→ webhook: payment.requires_approval
→ next action: Admin approval
```

## Documentation outputs

A behavior model can become:

- a matrix
- a lifecycle page
- a troubleshooting table
- a developer onboarding guide
- a QA scenario list
- a support knowledge article
- a product documentation section

## Value

The behavior model reduces inference.

It helps users answer:

- what happens?
- when does it happen?
- why does it happen?
- who can act?
- what event is emitted?
- what must happen next?
