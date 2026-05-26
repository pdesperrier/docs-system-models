# Evidence Snapshot — Fintech Qonto Role Permission Payment Behavior Model

This file contains a portfolio-safe snapshot of visible evidence.

It is not a full evidence registry.

## Scope

How Qonto role and plan conditions determine request visibility and payment-request action boundaries across API and support documentation.

## Source list

| Source | URL | Surface | Evidence class | Why it matters |
|---|---|---|---|---|
| Qonto developer introduction | https://docs.qonto.com/introduction/welcome | Developer documentation | MEDIUM | Establishes the public developer documentation surface for Qonto APIs. |
| List requests | https://docs.qonto.com/api-reference/business-api/expense-management/requests/list-requests | API reference | STRONG | Defines request visibility by role and plan for the requests endpoint. |
| What are the different roles available? | https://support-fr.qonto.com/hc/en-us/articles/23947722927249-What-are-the-different-roles-available | Support documentation | MEDIUM | Defines role capabilities, plan-conditioned actions, sub-account access, and approval workflow customization. |

## Evidence summary

| Evidence ref | Evidence class | Scope | Public-safe wording | Notes |
|---|---|---|---|---|
| E-REF-001 | MEDIUM | Developer documentation | Qonto exposes public API documentation for integrations across account and business banking objects. | Establishes the API surface, not a permission rule by itself. |
| E-REF-002 | STRONG | Requests endpoint | The list requests endpoint documents different request visibility for Employee, Manager, Owner, and Admin roles. | Visible role-conditioned visibility behavior. |
| E-REF-003 | STRONG | Plan boundary | The list requests endpoint is documented as accessible only for Business or Enterprise organizations. | Plan condition affects behavior. |
| E-REF-004 | MEDIUM | Employee role | Employees have limited access to their own transactions, receipts, uploaded invoices, and plan-conditioned request actions. | Support role behavior must not be merged automatically with API behavior. |
| E-REF-005 | MEDIUM | Accountant role | Accountants can make transfer requests on Business and Enterprise plans. | Plan-conditioned action boundary. |
| E-REF-006 | MEDIUM | Sub-account and workflow boundary | All roles can access main and sub-accounts, but actions vary by role permission, manager restrictions, and approval workflows. | Introduces a distributed permission model. |

## Visible behaviors

| Object | Visible behavior | Evidence refs | Reconstruction note |
|---|---|---|---|
| Request visibility | Employee sees only their own requests. | E-REF-002 | A narrow visibility rule is reconstructible. |
| Request visibility | Team-level Manager sees their own requests and direct team member requests. | E-REF-002 | Team boundary is visible but requires scope validation. |
| Request visibility | Organization-level Manager sees all requests based on permissions. | E-REF-002 | Permission source remains distributed. |
| Request visibility | Owner/Admin sees all requests across the organization. | E-REF-002 | Organization-wide visibility is reconstructible for this endpoint. |
| Plan boundary | Requests endpoint access depends on Business or Enterprise plan. | E-REF-003 | Plan eligibility is part of behavior. |
| Payment-request action | Employees and Accountants have plan-conditioned payment or transfer request capabilities. | E-REF-004, E-REF-005 | Action capability cannot be inferred from request visibility alone. |

## Missing or implicit behaviors

| Missing or implicit behavior | Why it matters | Reconstruction effort |
|---|---|---|
| Exact mapping between API-visible roles and support-center role descriptions. | Support and API surfaces may use the same role names with different operational granularity. | High |
| Whether request visibility and payment-request action permissions share the same permission source. | Visibility and action capability are distinct behaviors. | High |
| Exact effect of manager sub-account restrictions on API request visibility. | Support docs expose restriction behavior, but endpoint behavior must be validated. | High |
| Exact failure behavior when a role lacks endpoint access or plan eligibility. | Operational recovery and support paths need documented errors. | Medium |
| Whether approval workflow rules override, refine, or only supplement role permissions. | The relationship between roles, amounts, and workflow validation is not fully reconstructible from the current snapshot. | High |

## Behavioral documentation relevance

This case is useful because it separates documented behavior from behavior that still requires reconstruction.

The documentation friction is not treated as missing wording. It is treated as dependency visibility: the reader must reconstruct how the documented objects, roles, states, transitions, or workflows interact across surfaces.

## Evidence class guidance

- STRONG: API contracts, role tables, explicit permissions, explicit errors, procedural workflows
- MEDIUM: UI walkthroughs, SDK examples, support documentation, quickstarts, product documentation
- WEAK: FAQ, screenshots, snippets
- VERY WEAK: marketing, onboarding summaries

## Forbidden

Do not include:

- raw proprietary material
- unvalidated interpretations
- speculative transitions
- non-public internal notes

## Boundary

This snapshot records visible evidence only.

It does not infer undocumented behavior.
