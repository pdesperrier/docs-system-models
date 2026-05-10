# PaymentBehaviorModel — Behavior Matrix

## Purpose

Make payment behavior explicit across roles, approval rules, statuses, and webhooks.

## Core Model

role + amount + approval rule → status → webhook → next action

## Matrix

| Scenario | Role | Amount | Approval Required | Initial Status | Required Action | Final Status | Webhook |
|---|---|---:|---|---|---|---|---|
| Low-value payment | Finance | €500 | No | pending | none | processed | payment.processed |
| High-value payment | Finance | €8,000 | Yes | requires_approval | Admin approval | processed | payment.requires_approval → payment.processed |
| High-value payment | Admin | €8,000 | Yes | requires_approval | approve payment | processed | payment.approved → payment.processed |
| Rejected payment | Admin | €8,000 | Yes | requires_approval | reject payment | rejected | payment.rejected |
| Unauthorized creation | Viewer | €500 | No | forbidden | none | forbidden | none |
| Approval timeout | Finance | €8,000 | Yes | requires_approval | no approval received | expired | payment.expired |

## Missing Documentation Relationships

- role → status
- approval threshold → webhook
- status transition → next action
- timeout → expiration behavior
- rejection → downstream effects

## Recommended Structural Fix

Create one central page:

Payment Approval Behavior

Containing:
- role rules
- threshold rules
- state transitions
- webhook mapping
- edge cases
- full workflow examples
