# PayFlow — Payment Validation

## Case type

Fictional case study.

This example is designed to demonstrate how documentation architecture can make API behavior easier to understand.

## Product context

PayFlow provides a Payment API.

Developers can create payments through an API endpoint.

Some payments are processed immediately. Others require validation depending on:

- user role
- payment amount
- approval threshold
- current payment status
- validation outcome

The API also emits webhook events when payment status changes.

## Problem

The documentation explains each element separately:

- how to create a payment
- what user roles exist
- when approval is required
- what payment statuses mean
- which webhook events may be emitted

Each page is understandable on its own.

The problem is that the combined behavior is not visible in a single model.

## Friction

A developer can understand each page separately but still cannot reliably answer:

- Can this user create the payment?
- Does the amount require approval?
- Which role can approve it?
- What status is returned by the API?
- Which webhook is emitted?
- What is the next required action?

The documentation makes execution possible, but behavior prediction remains difficult.

## Example scenario

A Finance user creates an €8,000 payment.

Business rule:

```text
Payments above €5,000 require approval.
```

Role rule:

```text
Finance users can create payments.
Admin users can approve payments.
Viewer users cannot create payments.
```

Expected behavior:

```text
Finance + €8,000 + approval threshold exceeded
→ status: requires_approval
→ webhook: payment.requires_approval
→ next action: Admin approval required
```

## Behavior model

| Scenario | Role | Amount | Approval required | Initial status | Required action | Final status | Webhook |
|---|---|---:|---|---|---|---|---|
| Low-value payment | Finance | €500 | No | `pending` | none | `processed` | `payment.processed` |
| High-value payment | Finance | €8,000 | Yes | `requires_approval` | Admin approval | `processed` | `payment.requires_approval`, then `payment.processed` |
| High-value payment | Admin | €8,000 | Yes | `requires_approval` | Approve payment | `processed` | `payment.approved`, then `payment.processed` |
| Rejected payment | Admin | €8,000 | Yes | `requires_approval` | Reject payment | `rejected` | `payment.rejected` |
| Unauthorized creation | Viewer | €500 | No | request rejected | none | `forbidden` | none |
| Approval timeout | Finance | €8,000 | Yes | `requires_approval` | no approval received | `expired` | `payment.expired` |

## Current documentation pattern

### Page 1 — Create a Payment

Explains:

- endpoint: `POST /payments`
- required fields
- amount
- currency
- beneficiary
- response object

Example response:

```json
{
  "id": "pay_123",
  "amount": 8000,
  "currency": "EUR",
  "status": "requires_approval"
}
```

### Page 2 — Roles

Explains:

- Admin
- Finance
- Viewer

But does not show how each role changes payment behavior.

### Page 3 — Approval Rules

Explains:

- payments above €5,000 require approval

But does not connect this rule to statuses or webhooks.

### Page 4 — Statuses

Lists:

- `pending`
- `requires_approval`
- `approved`
- `rejected`
- `processed`
- `expired`

But does not show transitions.

### Page 5 — Webhooks

Lists:

- `payment.created`
- `payment.requires_approval`
- `payment.approved`
- `payment.rejected`
- `payment.processed`
- `payment.expired`

But does not map events to workflow scenarios.

## Proposed documentation structure

Create a central page:

```text
Payment Approval Behavior
```

Recommended structure:

1. Core rule
2. Role-based behavior
3. Approval threshold
4. Status and webhook mapping
5. Full scenario
6. Edge cases
7. Troubleshooting

## Proposed section: Core rule

A payment can be processed immediately or require approval depending on:

- user role
- amount
- approval threshold
- current payment status

## Proposed section: Role-based behavior

| Role | Can create payment | Can approve payment | Can reject payment |
|---|---|---|---|
| Admin | Yes | Yes | Yes |
| Finance | Yes | No | No |
| Viewer | No | No | No |

## Proposed section: Approval threshold

| Amount | Approval required | Initial status |
|---:|---|---|
| ≤ €5,000 | No | `pending` |
| > €5,000 | Yes | `requires_approval` |

## Proposed section: Status and webhook mapping

| Action | Status returned | Webhook |
|---|---|---|
| Payment created below threshold | `pending` | `payment.created` |
| Payment processed | `processed` | `payment.processed` |
| Payment created above threshold | `requires_approval` | `payment.requires_approval` |
| Payment approved | `approved` | `payment.approved` |
| Payment rejected | `rejected` | `payment.rejected` |
| Approval expired | `expired` | `payment.expired` |

## Full scenario example

Finance user creates an €8,000 payment.

```http
POST /payments
```

Request:

```json
{
  "amount": 8000,
  "currency": "EUR",
  "beneficiary_id": "ben_456"
}
```

Response:

```json
{
  "id": "pay_123",
  "status": "requires_approval",
  "approval_required": true
}
```

Webhook:

```json
{
  "type": "payment.requires_approval",
  "payment_id": "pay_123"
}
```

Next action:

```text
An Admin must approve or reject the payment.
```

## Transformation

Before:

```text
role, amount, status, approval rules, and webhook events are documented separately
```

After:

```text
role + amount + approval rule → status → webhook → next action
```

## Outcome

The developer can now predict the behavior of the payment workflow before implementing it.

This reduces:

- trial and error
- webhook handling mistakes
- support dependency
- incomplete QA scenarios
- ambiguity around approval workflows

## Reusable pattern

This case can be adapted to any documentation where behavior depends on combined conditions:

- permissions
- feature flags
- subscription plans
- API states
- lifecycle transitions
- workflow approvals
- integration status
