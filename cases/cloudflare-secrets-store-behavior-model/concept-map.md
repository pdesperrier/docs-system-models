# Cloudflare — Secrets Store Concept Map

## Core concepts

- Secrets Store
- Account-level secret
- Secret metadata
- Secret value
- Role
- API token permission
- Store ID
- Secret name
- Worker binding
- `env` object
- Local development mode
- Production secret
- AI Gateway BYOK
- Provider key
- Key alias
- Request header

## Concept relationships

```text
Secrets Store
→ stores account-level secrets
→ exposes metadata to authorized roles
→ does not expose decrypted values after save
```

```text
Role / API token permission
→ determines secret management or metadata access
```

```text
Account secret
→ can be bound to Worker
→ Worker accesses it at runtime through binding
```

```text
Account secret
→ can be associated with AI Gateway BYOK
→ gateway uses configured provider key without exposing it in application requests
```

## Actor model

| Actor / permission | Primary concept | Main capability |
|---|---|---|
| Super Administrator | account administration | manage secrets, bind secrets, associate with AI Gateway |
| Secrets Store Admin | secret management | create, edit, duplicate, delete, view metadata |
| Secrets Store Deployer | deployment / association | bind secrets to Workers, associate secrets with AI Gateway |
| Secrets Store Reporter | metadata visibility | view metadata only |
| Account Secrets Store Edit | API permission | create, edit, duplicate, delete secrets |
| Account Secrets Store Read | API permission | view secret metadata |

## Secret lifecycle model

```text
create
→ stored encrypted at account level
→ value no longer visible
→ duplicate / edit / delete possible with correct permission
→ associated service can access secret
```

## Worker integration model

```text
create account secret
→ bind secret to Worker
→ deploy binding or save version
→ Worker uses env.<BINDING>.get()
→ application uses returned value at runtime
```

## Local / production distinction

```text
production secret
→ created with dashboard, API, or Wrangler --remote
→ not available in local development
```

```text
local development secret
→ created without --remote
→ used only locally
```

## AI Gateway BYOK model

```text
provider API key
→ stored in Cloudflare dashboard
→ request omits provider Authorization header
→ request keeps cf-aig-authorization
→ optional cf-aig-byok-alias selects a specific key
```

## Failure / risk relationships

| Change | Affected behavior |
|---|---|
| Delete secret | dependent services may fail |
| Edit secret | replacement affects services using the secret |
| Remove provider key | AI Gateway requests depending on it stop |
| Use wrong alias | request uses wrong configured provider key |
| Use production secret locally | unavailable unless local-mode secret exists |
| Confuse metadata with value | user overestimates what role can access |
