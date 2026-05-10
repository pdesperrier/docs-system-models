# PaymentBehaviorModel — Before / After Documentation

# BEFORE

## Existing Documentation Pattern

### Create Payment
Explains:
- endpoint
- request body
- response object

### Roles
Explains:
- Admin
- Finance
- Viewer

### Approval Rules
Explains:
- payments above €5,000 require approval

### Statuses
Lists:
- pending
- requires_approval
- approved
- rejected
- processed
- expired

### Webhooks
Lists:
- payment.created
- payment.requires_approval
- payment.approved
- payment.rejected
- payment.processed
- payment.expired

## Problem

Each page is understandable locally.

But the combined behavior remains implicit.

The developer must reconstruct:

role + amount + approval rule → status → webhook → next action

# AFTER

## Central Documentation Structure

### Payment Approval Behavior

Recommended sections:

1. Core behavior rule
2. Role-based behavior
3. Approval thresholds
4. Status transitions
5. Webhook mapping
6. Edge cases
7. Full scenarios

## Example Scenario

Finance user creates an €8,000 payment.

Behavior:

Finance + amount > €5,000
→ requires_approval
→ payment.requires_approval webhook
→ Admin action required

## Outcome

The workflow becomes predictable before implementation.

This reduces:
- integration errors
- support dependency
- webhook mistakes
- ambiguity
