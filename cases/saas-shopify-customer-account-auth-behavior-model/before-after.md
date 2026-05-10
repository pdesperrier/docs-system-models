# Shopify — Customer Account API Authentication Documentation Before / After

# BEFORE

## Current documentation pattern

The documentation provides detailed sections for each part of the flow:

- authentication overview
- client types
- OpenID discovery endpoint
- Customer Account API discovery endpoint
- authorization request
- public-client PKCE
- token exchange
- refresh token
- logout
- GraphQL endpoints
- directives
- rate limits
- status and error codes

## What works

Each section provides useful local information.

Examples:

- discovery endpoints return authentication and API URLs
- public clients require PKCE
- confidential clients require authorization credentials
- token exchange can return specific errors
- GraphQL APIs may return HTTP 200 with errors
- Customer Account API requests include cost and throttling behavior

## Problem

The reader has to reconstruct the operational sequence.

The documentation explains the pieces, but the end-to-end behavior depends on several combined conditions:

```text
client type
+ discovery endpoint
+ authorization parameters
+ PKCE / credentials
+ token response
+ GraphQL endpoint
+ HTTP status behavior
+ GraphQL errors
+ rate-limit cost
```

## Resulting friction

A developer can implement each step, but may still struggle to predict:

- which endpoint must be discovered first
- which parameters change by client type
- which token error indicates which fix
- when HTTP 200 still means a GraphQL error
- where query cost appears
- what to do after a throttled response

# AFTER

## Proposed central page

```text
Customer Account API Authentication Behavior
```

## Proposed structure

1. End-to-end behavior overview
2. Client type decision
3. Discovery endpoint map
4. Authorization request model
5. Token exchange outcomes
6. API endpoint discovery
7. GraphQL response handling
8. Rate limits and query cost
9. Troubleshooting matrix

## 1. End-to-end behavior overview

```text
discover auth endpoints
→ build authorization request
→ handle client-type requirements
→ exchange code for token
→ refresh token when needed
→ discover Customer Account API endpoint
→ call GraphQL endpoint
→ inspect HTTP status + GraphQL payload
→ handle cost/throttling/errors
```

## 2. Client type decision

| Client type | Example | Required security behavior | Token exchange requirement |
|---|---|---|---|
| Public | browser or mobile app | PKCE | `code_verifier` |
| Confidential | server-side app | client secret kept private | Authorization header credentials |

## 3. Discovery endpoint map

| Need | Endpoint | Returns | Used for |
|---|---|---|---|
| Authentication endpoints | `/.well-known/openid-configuration` | `authorization_endpoint`, `token_endpoint`, `end_session_endpoint`, `jwks_uri` | OAuth login and token flow |
| Customer Account API endpoints | `/.well-known/customer-account-api` | `graphql_api`, `mcp_api` | GraphQL API requests |

## 4. Token error troubleshooting

| Error / status | Likely cause | Fix |
|---|---|---|
| `invalid_grant` | PKCE challenge/verifier encoding issue | Remove padding, replace `+` and `/`, verify code challenge |
| `invalid_client` | Incorrect `client_id` | Check Customer Account API settings |
| `invalid_token` | Missing or invalid Origin header | Verify Origin header and JavaScript origins |
| 403 permission message | Missing user-agent | Add/verify user-agent header |

## 5. GraphQL response model

| HTTP status | Payload | Meaning | Developer action |
|---|---|---|---|
| 200 + `data` | successful data | query succeeded | process data |
| 200 + `errors` | GraphQL errors | semantic or execution error | inspect `errors[]` and `extensions` |
| 200 + `THROTTLED` | GraphQL error | query cost / rate limit issue | reduce cost or retry later |
| 4xx / 5xx | HTTP-level error | account, network, or service issue | handle HTTP failure path |

## Key improvement

Before:

```text
developer reads many sections and reconstructs flow manually
```

After:

```text
developer sees how client type, endpoint discovery, token exchange, GraphQL response behavior, and rate limits interact
```

## Outcome

The authentication flow becomes predictable before implementation.

This reduces:

- endpoint confusion
- PKCE mistakes
- token-exchange troubleshooting time
- incorrect error handling
- GraphQL response handling mistakes
- support dependency
