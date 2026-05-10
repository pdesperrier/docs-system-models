# Shopify — Customer Account Authentication Behavior Model

## Case type

Concrete documentation analysis based on Shopify developer documentation excerpts.

This case demonstrates how documentation architecture can make authentication behavior easier to reason about when an integration depends on client type, discovery endpoints, OAuth parameters, token exchange, refresh behavior, GraphQL endpoint discovery, status codes, and error payloads.

## Product context

Shopify provides developer documentation for multiple storefront and customer-account integration paths.

The analyzed area focuses on the **Customer Account API authentication flow** and its relationship with:

- storefront-domain discovery endpoints
- OpenID Connect configuration
- OAuth authorization requests
- public vs confidential clients
- PKCE requirements
- token exchange
- refresh tokens
- GraphQL endpoint discovery
- GraphQL 200 OK error payloads
- rate limits and query cost

## Problem

The documentation explains each part of the authentication and API access process in detail.

However, the behavior spans several decision points:

- which client type is used
- whether PKCE is required
- which endpoint must be discovered
- which parameters are required
- which errors can happen during token exchange
- when a GraphQL request may return HTTP 200 with errors
- how query cost and throttling appear in responses

Each section is understandable independently.

The harder part is seeing the end-to-end behavior as a single executable model.

## Friction

A developer can understand each page section separately but still has to reconstruct:

- which discovery endpoint to call first
- which endpoint comes from which discovery response
- which authentication parameters differ between public and confidential clients
- which token-exchange errors correspond to which likely cause
- which GraphQL failures appear as HTTP 200 responses
- how rate limits appear through `extensions.cost` and throttling errors
- what to do next after each response state

The documentation makes implementation possible, but the decision model remains distributed.

## Core scenario

A developer builds a headless storefront that uses the Customer Account API.

The application must:

1. Discover authentication endpoints.
2. Build an authorization request.
3. Use PKCE if the client is public.
4. Exchange the authorization code for tokens.
5. Refresh tokens when needed.
6. Discover the Customer Account GraphQL endpoint.
7. Handle GraphQL responses, including errors returned with HTTP 200.
8. Monitor query cost and throttling.

Expected behavior model:

```text
client type + discovery endpoint + auth parameters
→ authorization behavior
→ token exchange outcome
→ API endpoint selection
→ GraphQL response pattern
→ next action
```

## Behavior model

Detailed matrix:

- [behavior-matrix.md](behavior-matrix.md)

## Documentation transformation

Current documentation pattern:

```text
Authentication overview
Discovery endpoints
Authorization request
Public client PKCE
Token exchange
Refresh token
Customer Account API endpoint discovery
Rate limits
Status and error codes
```

Proposed documentation structure:

```text
Customer Account API Authentication Behavior
→ Client type decision
→ Discovery endpoint map
→ Authorization parameter model
→ Token exchange outcomes
→ API endpoint discovery
→ GraphQL error/HTTP status model
→ Rate-limit response model
→ Troubleshooting matrix
```

Detailed before/after:

- [before-after.md](before-after.md)

## Concept map

The case connects these concepts:

```text
Client type
Discovery endpoint
Authorization endpoint
Token endpoint
PKCE
Access token
Refresh token
GraphQL endpoint
HTTP status
GraphQL errors
Query cost
Throttle response
Next action
```

Concept map:

- [concept-map.md](concept-map.md)

## Recommendations

Main recommendation:

Create a central **Customer Account API Authentication Behavior** page that connects client type, discovery endpoints, OAuth parameters, token exchange outcomes, GraphQL endpoint discovery, error response patterns, and rate-limit behavior.

Detailed recommendations:

- [recommendations.md](recommendations.md)

## Outcome

The developer can predict the authentication and API-access workflow before implementing it.

This reduces:

- endpoint confusion
- client-type mistakes
- PKCE implementation errors
- token-exchange troubleshooting time
- incorrect GraphQL error handling
- support dependency
- fragmented onboarding

## Reusable pattern

This case can be adapted to any developer documentation where behavior depends on combined conditions:

- authentication flows
- OAuth client types
- endpoint discovery
- SDK initialization
- API versioning
- GraphQL error handling
- rate-limit behavior
- multi-environment setup
