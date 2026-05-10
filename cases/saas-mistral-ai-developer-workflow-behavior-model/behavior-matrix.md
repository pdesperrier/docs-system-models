# Behavior Matrix

| Area | Action | Condition | Expected behavior | Friction |
|---|---|---|---|---|
| First request | API key set | Billing/plan valid | Response returned | 401/402/429 |
| Tool calling | Tool schema supplied | Model emits tool_calls | Tool loop continues | Missing result step |
| RAG | File uploaded | Status processed | Grounded answer | Generic answer |
| Workspace | Key generated | Billing active | Calls tracked | Inactive key |
| Usage limits | Limit reached | Quota exceeded | 429 returned | Retry not sufficient |
| Files | Upload | Purpose/visibility set | Reusable file | Retention/deletion impact |
| Transient errors | 429/5xx | Retry strategy | Backoff | Retry storm |
