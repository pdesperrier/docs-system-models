# Qonto Role Permission Payment Behavior Model

## Case decision

Later fallback case.

## Exact scope

How Qonto role and plan conditions determine request visibility and payment-request action boundaries across API and support documentation.

## Object observed

Qonto role, permission, request, and payment-request behavior.

## Observable friction

The behavior is distributed across API documentation and support documentation.

The reader must reconstruct how roles, plans, request visibility, sub-account restrictions, and approval workflows affect what a user can see or do.

## Market need linked

Fintech documentation requires operational understanding because permission ambiguity can create support risk, integration risk, and compliance-sensitive misunderstanding.

This case can show how behavioral documentation makes role boundaries explicit without inventing undocumented permission inheritance.

## Phase 0 boundary

This case stays outside the Phase 0 active flow.

## Offer supported

Primary offer: Reconstructibility Audit Sprint.

Secondary offer: Behavioral Debt Map.

## Visible evidence

- role names
- request visibility rules
- endpoint plan limitation
- support documentation on member roles
- plan-conditioned request actions
- approval workflow references
- sub-account restrictions

## Elements to verify during analysis

- whether support roles and API-visible roles map cleanly
- whether request visibility and payment-request permissions follow the same role model
- whether Manager permissions differ at team and organization level
- whether plan limitations change behavior
- whether sub-account restrictions change API-visible behavior
- whether approval workflows override or refine role permissions
- whether missing actions create support or integration ambiguity

## Behavior matrix potential

| Object | Role / condition | Observable behavior | Missing behavior | Reconstruction effort |
|---|---|---|---|---|
| Request | Employee | sees own requests | relation to payment-request permissions requires validation | medium |
| Request | Manager, team-level | sees own requests and direct team member requests | exact team boundary requires validation | high |
| Request | Manager, organization-level | sees all requests based on permissions | permission source requires validation | high |
| Request | Owner/Admin | sees all requests across the organization | relation to API scopes requires validation | high |
| Payment request | Employee / Accountant | plan-conditioned request capability is documented | mapping to API behavior requires validation | high |

## Inclusion reasons

This case is already present in the repository.

It is behavior-oriented.

It exposes role boundaries.

It can produce a matrix around permissions, visibility, and operational consequences.

## Reuse condition

Use this case if the Cloudflare case does not produce enough validated evidence for a public-safe portfolio case.

## Exclusion limit

Do not expand the fallback case into all Qonto payments.

Keep the scope limited to role-driven visibility and payment-request action boundaries.
