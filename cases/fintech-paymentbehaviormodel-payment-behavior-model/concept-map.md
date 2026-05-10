# PaymentBehaviorModel — Concept Map

## Core Concepts

- User role
- Payment amount
- Approval threshold
- Payment status
- Webhook event
- Next action

## Relationships

User role + payment amount
→ determines approval requirement

Approval requirement
→ determines initial status

Initial status
→ determines webhook event

Webhook event
→ determines downstream workflow action

## Role Relationships

| Role | Can Create | Can Approve | Can Reject |
|---|---|---|---|
| Admin | Yes | Yes | Yes |
| Finance | Yes | No | No |
| Viewer | No | No | No |

## State Relationships

| State | Meaning | Next Step |
|---|---|---|
| pending | processing started | automatic processing |
| requires_approval | approval required | Admin approval |
| approved | approval completed | processing |
| rejected | payment rejected | stop workflow |
| processed | payment completed | end |
| expired | approval timeout | retry or recreate |

## Event Relationships

| Status | Webhook |
|---|---|
| requires_approval | payment.requires_approval |
| approved | payment.approved |
| rejected | payment.rejected |
| processed | payment.processed |
| expired | payment.expired |
