# Shopify — Customer Account Authentication Behavior Matrix

## Purpose

Make the Customer Account API authentication and request behavior explicit across client type, discovery endpoints, authorization parameters, token exchange, GraphQL status handling, and rate-limit responses.

## Core model

```text
client type + discovery endpoint + auth parameters
→ authorization behavior
→ token exchange outcome
→ API endpoint selection
→ response pattern
→ next action
```

## Behavior matrix

| Scenario | Condition | Required endpoint / input | Expected behavior | Response / output | Next action | Documentation gap |
|---|---|---|---|---|---|---|
| Discover authentication endpoints | Storefront domain known | `GET /.well-known/openid-configuration` | Returns authorization, token, logout, and JWKS endpoints | OIDC configuration object | Use discovered `authorization_endpoint` and `token_endpoint` | Endpoint discovery is explained, but the full dependency chain could be centralized |
| Build authorization request | Client wants customer login | `authorization_endpoint`, `scope`, `client_id`, `response_type`, `redirect_uri`, `state`, optional `nonce` | Customer is redirected to login/authorization flow | Authorization code returned to redirect URI | Exchange code for token | Required parameters are listed, but decision flow is distributed |
| Public client authorization | Web/mobile public client | `code_challenge`, `code_challenge_method=S256` | PKCE protects authorization code flow | Authorization code flow continues | Store and send `code_verifier` during token exchange | Public vs confidential differences should be visible in one comparison |
| Confidential client token exchange | Server-side app | Authorization credentials header | Token endpoint accepts credentialed request | `access_token`, `refresh_token`, `id_token`, `expires_in` | Use token to call Customer Account API | Confidential-only header requirement can be missed when scanning flow |
| Public client token exchange | Browser/mobile client | `code_verifier` | Token endpoint validates PKCE verifier | Token response or `invalid_grant` if verifier encoding is wrong | Store token and handle refresh | PKCE generation, URL-safe encoding, and token errors need a troubleshooting link |
| Token refresh | Access token expired | `grant_type=refresh_token`, `refresh_token`, `client_id` | New access token is issued | Refreshed token response | Continue API calls | Refresh behavior is separate from initial auth behavior |
| Discover Customer Account API endpoint | Need GraphQL endpoint | `GET /.well-known/customer-account-api` | Returns `graphql_api` and `mcp_api` endpoints | Versioned endpoint already included | Call discovered GraphQL endpoint | Relationship between auth discovery and API discovery should be mapped |
| GraphQL request succeeds | Valid token and query | Discovered `graphql_api` endpoint | API returns data | HTTP 200 with `data` | Process response | OK |
| GraphQL semantic error | Query has errors or throttling | GraphQL endpoint | API may return HTTP 200 with `errors` payload | `errors[]`, often with `extensions.code` | Handle GraphQL error object, not only HTTP status | Important behavior should be elevated in a response model |
| Query too costly / throttled | Cost exceeds available quota | Query cost limit reached | API returns throttling error | `THROTTLED` or cost-related extensions | Reduce query cost or retry later | Cost model and response handling are separate from auth flow |
| Token request error: invalid_grant | Authorization-code/token exchange issue | Token endpoint | Error indicates code challenge/verifier issue or encoding mismatch | HTTP 400 with `invalid_grant` | Verify PKCE encoding and padding removal | Error → cause → fix should be tabled |
| Token request error: invalid_client | Bad client identifier | Token endpoint | Token exchange fails | HTTP 401 with `invalid_client` | Verify `client_id` | Error mapping should be centralized |
| Token request error: invalid_token | Origin missing or invalid | Token endpoint | Token exchange fails | HTTP 401 with `invalid_token` in `www-authenticate` | Verify Origin header and app settings | Error mapping should be centralized |
| Permission/browser request error | Missing user-agent | Token endpoint | Request may be rejected | HTTP 403 with permission-related message | Add/verify user-agent header | Error mapping should be centralized |

## Patterns identified

- Endpoint discovery is a prerequisite for both authentication and API requests.
- Client type changes required parameters and token-exchange behavior.
- GraphQL errors may appear inside HTTP 200 responses.
- Rate-limit and query-cost behavior is explained separately from general request behavior.
- Error messages are documented locally, but not grouped as a troubleshooting matrix.

## Critical gaps

1. Public vs confidential client behavior needs a single comparison table.
2. Authentication discovery and API discovery need a shared sequence model.
3. Token-exchange error responses should be mapped to likely causes and fixes.
4. GraphQL HTTP 200 error behavior should be linked directly to implementation guidance.
5. Rate-limit/cost responses should be connected to the request lifecycle.

## Suggested documentation model

Add a central page:

```text
Customer Account API Authentication Behavior
```

Suggested sections:

1. End-to-end flow
2. Client type decision table
3. Discovery endpoint map
4. Authorization parameter matrix
5. Token exchange outcomes
6. API endpoint discovery
7. GraphQL response model
8. Rate-limit and query-cost behavior
9. Troubleshooting matrix
