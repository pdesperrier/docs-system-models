```mermaid
flowchart LR
    Role --> Permission
    Permission --> Approval
    Approval --> Payment
    Payment --> Webhook
```