# Documentation Vale style

Purpose:
enforce a lightweight documentation-governance layer for the portfolio.

## Rule intent

| Rule | Purpose | Level |
|---|---|---|
| Terminology.yml | Normalize project terminology | warning |
| ForbiddenWords.yml | Flag vague/promotional wording | warning |
| OperationalVocabulary.yml | Detect abstraction that may hide behavior | suggestion |
| BehaviorModel.yml | Trigger review of behavior-model wording | suggestion |
| WeakClaims.yml | Flag unsupported or vague claims | warning |
| RoleActionPrecision.yml | Trigger review of role/action precision | suggestion |

## Calibration principle

Do not chase zero warnings.

Keep warnings that expose real documentation friction.
Remove rules that create noise.
