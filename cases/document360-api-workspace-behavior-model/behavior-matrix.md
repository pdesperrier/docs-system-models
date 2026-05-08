# Behavior Matrix

| Area | Action | Condition | Expected behavior | Friction |
|---|---|---|---|---|
| API workspace | Upload file | Valid spec | Reference generated | Import warnings/errors |
| API workspace | Create from URL | Reachable URL | Reference generated | Invalid URL/server |
| CI/CD | Resync | CLI + API key | Reference regenerated | Stale key/path |
| Try It | Test endpoint | Server + security scheme | Interactive request works | 403/unavailable |
| Editor | Switch editor | Allowed transition | Editor changed | Irreversible state |
| Drive | Remove file | Dependencies exist | URL breaks | Broken article links |
| Analytics | Filter | Workspace/language selected | Scoped metrics | Misread data |
