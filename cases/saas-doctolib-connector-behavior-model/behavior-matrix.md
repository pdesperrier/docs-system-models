# Synchronization Behavior Matrix

| Connector State | Ownership | Action | Result | Failure Mode |
|---|---|---|---|---|
| Active | Local-only patient | Modify patient identity | Synchronization succeeds | None |
| Active | Doctolib-linked patient | Modify patient identity | Synchronization blocked | Ownership restriction |
| Inactive | Any | Open patient record | No synchronization | Connector unavailable |
| Active | External identifier mismatch | Merge patient records | Duplicate conflict | Identifier inconsistency |
| Wrong startup order | Any | Open connector | Partial activation | Runtime failure |
