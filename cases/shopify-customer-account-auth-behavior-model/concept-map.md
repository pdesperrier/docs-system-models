# Shopify — Customer Account Authentication Concept Map

## Core concepts

- Storefront domain
- OpenID discovery endpoint
- Customer Account API discovery endpoint
- Client type
- Public client
- Confidential client
- Authorization request
- PKCE
- Code challenge
- Code verifier
- Authorization code
- Token endpoint
- Access token
- Refresh token
- ID token
- GraphQL endpoint
- HTTP status
- GraphQL errors
- Query cost
- Throttling
- Next action

## Relationship model

```text
Storefront domain
→ discovery endpoints
→ auth endpoint + API endpoint
```

```text
Client type
→ required security mechanism
→ token exchange requirements
```

```text
Authorization request
→ authorization code
→ token exchange
→ access token / refresh token
```

```text
GraphQL request
→ HTTP status
→ data or errors payload
→ cost / throttling information
→ next action
```

## Client type relationships

| Client type | Can keep secret? | Required mechanism | Token exchange input |
|---|---|---|---|
| Public | No | PKCE | `code_verifier` |
| Confidential | Yes | Client credentials | Authorization header |

## Endpoint relationships

| Source | Endpoint | Returns | Used by |
|---|---|---|---|
| Storefront domain | `/.well-known/openid-configuration` | auth URLs | OAuth login/token flow |
| Storefront domain | `/.well-known/customer-account-api` | GraphQL and MCP URLs | API requests |

## Token lifecycle

```text
authorization code
→ access token
→ expires_in elapsed
→ refresh token
→ new access token
```

## Error-response relationships

| Response pattern | Meaning | Next action |
|---|---|---|
| HTTP 200 + `data` | GraphQL success | use data |
| HTTP 200 + `errors` | GraphQL-level error | inspect `errors[]` |
| `THROTTLED` | rate/cost issue | reduce cost or retry |
| `invalid_grant` | PKCE/code issue | verify verifier/challenge |
| `invalid_client` | client ID issue | verify app settings |
| `invalid_token` | origin/token issue | verify headers/settings |

## Documentation architecture implication

The documentation should not present authentication, discovery, tokens, GraphQL response behavior, and rate limits as disconnected topics.

They form one behavior chain:

```text
client type → auth setup → token outcome → API endpoint → response handling
```
