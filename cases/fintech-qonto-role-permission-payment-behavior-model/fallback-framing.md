# Qonto Role Permission Payment Behavior Model

## Case decision

Fallback portfolio case.

## Exact scope

How Qonto role permissions affect request visibility and payment-related actions across API and support documentation.

## Object observed

Qonto role, permission, request, and payment behavior.

## Observable friction

The behavior is distributed across API documentation and support documentation.

The reader must reconstruct how roles affect visibility, available actions, and operational boundaries.

## Market need linked

Fintech documentation requires operational understanding because permission ambiguity can create support risk, integration risk, and compliance-sensitive misunderstanding.

This case can show how behavioral documentation makes role boundaries explicit without inventing undocumented permission inheritance.

## Offer supported

Primary offer: Reconstructibility Audit Sprint.

Secondary offer: Behavioral Debt Map.

## Visible evidence

- role names
- request visibility rules
- API endpoint access
- plan limitations
- support documentation on member roles
- role-dependent operational boundaries

## Elements to verify during analysis

- whether support roles and API-visible roles map cleanly
- whether request visibility and payment permissions follow the same role model
- whether Manager permissions differ at team and organization level
- whether plan limitations change behavior
- whether API scopes and UI roles create divergent access models
- whether missing actions create support or integration ambiguity

## Behavior matrix potential

| Object | Role / condition | Observable behavior | Missing behavior | Reconstruction effort |
|---|---|---|---|---|
| Request | Employee | sees own requests | unclear relation to payment permissions | medium |
| Request | Manager, team-level | sees own requests and direct team member requests | exact team boundary requires validation | high |
| Request | Manager, organization-level | sees requests based on permissions | permission source requires validation | high |
| Request | Owner/Admin | sees organization-wide requests | relation to API scopes requires validation | high |

## Inclusion reasons

This case is already present in the repository.

It is behavior-oriented.

It exposes role boundaries.

It can produce a matrix around permissions, visibility, and operational consequences.

## Reuse condition

Use this case if the Cloudflare case does not produce at least three implicit behaviors in less than thirty minutes.

## Exclusion limit

Do not expand the fallback case into all Qonto payments.

Keep the scope limited to role-driven visibility and action boundaries.