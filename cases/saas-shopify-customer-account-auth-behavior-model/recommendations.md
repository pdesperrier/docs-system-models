# Shopify — Customer Account Authentication Recommendations

## Main recommendation

Create a central **Customer Account API Authentication Behavior** page.

The page should connect client type, discovery endpoints, OAuth parameters, token exchange, GraphQL endpoint discovery, HTTP/GraphQL error behavior, and rate-limit responses.

## 1. Add an end-to-end flow

Recommended model:

```text
discover auth endpoints
→ authorize customer
→ exchange code for token
→ refresh token when needed
→ discover API endpoint
→ call GraphQL endpoint
→ inspect status + payload
→ handle errors/cost/throttling
```

## 2. Add a client-type decision table

| Decision | Public client | Confidential client |
|---|---|---|
| Can keep secret? | No | Yes |
| Uses PKCE? | Yes | Optional / not primary |
| Needs `code_verifier`? | Yes | No |
| Needs Authorization header? | No | Yes |
| Typical context | Browser/mobile | Server-side app |

## 3. Centralize discovery endpoints

Create a small endpoint map:

| Task | Discovery endpoint | Returned value |
|---|---|---|
| Authenticate customer | `/.well-known/openid-configuration` | authorization/token/logout URLs |
| Call Customer Account API | `/.well-known/customer-account-api` | GraphQL and MCP API URLs |

## 4. Add a token-exchange troubleshooting matrix

| Error | Likely cause | Fix |
|---|---|---|
| `invalid_grant` | PKCE code challenge/verifier mismatch or encoding issue | verify URL-safe encoding and padding removal |
| `invalid_client` | incorrect `client_id` | check app/storefront settings |
| `invalid_token` | missing/incorrect Origin header | verify Origin header and allowed JavaScript origins |
| 403 permission message | missing user-agent | add/verify user-agent header |
| 500 during API endpoint use | misspelled token parameters or endpoint issue | verify request parameters and endpoint source |

## 5. Connect GraphQL HTTP status behavior to developer actions

Add a response model:

| Response | Meaning | Developer action |
|---|---|---|
| HTTP 200 + `data` | success | process result |
| HTTP 200 + `errors` | GraphQL error | inspect `errors[]` |
| HTTP 200 + `THROTTLED` | rate/cost issue | reduce query cost or retry |
| 4xx / 5xx | HTTP-level error | handle infrastructure/account/service error |

## 6. Link rate limits to the request lifecycle

Rate limits should be presented not only as a reference section, but as part of the request behavior model.

Recommended addition:

```text
query complexity → cost extensions → quota state → throttling response → next action
```

## 7. Add a “what to do next” layer

For each response state, add the next developer action:

- retry later
- reduce query cost
- check app settings
- inspect `errors[]`
- refresh token
- rediscover endpoint
- verify Origin header
- verify PKCE encoding

## Expected improvements

- reduced endpoint confusion
- clearer public/confidential client decision
- faster PKCE troubleshooting
- better GraphQL error handling
- more predictable authentication implementation
- lower support dependency
- stronger onboarding for Customer Account API developers

## Priority order

| Priority | Action |
|---|---|
| High | Add central behavior page |
| High | Add client-type decision table |
| High | Add discovery endpoint map |
| High | Add token-error troubleshooting matrix |
| Medium | Add GraphQL response model |
| Medium | Connect rate limits to request lifecycle |
| Low | Add diagram or sequence example |
