# Mermaid Test

Use this file to test Mermaid rendering in the portfolio environment.

```mermaid
stateDiagram-v2
  [*] --> EvidenceCaptured
  EvidenceCaptured --> BranchCreated : divergence detected
  BranchCreated --> NotYetReconstructible : missing evidence
```
