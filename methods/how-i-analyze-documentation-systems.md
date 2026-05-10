# How I Analyze Documentation Systems

This method turns documentation from a set of topics into an explicit behavioral model of the product.

## Analysis Pipeline

1. Detect workflow fragmentation.
2. Identify hidden state transitions.
3. Map role-dependent behavior.
4. Surface implicit dependencies.
5. Separate nominal paths from exceptions.
6. Rebuild the operational model.
7. Convert the model into documentation architecture.
8. Validate terminology, roles, states, and conditions.

## Audit Objects

| Object | What to inspect | Typical friction |
|---|---|---|
| Concept | Definition, scope, adjacent concepts | Duplicate or unstable meaning |
| Workflow | Ordered steps, actors, interfaces | Reader reconstructs sequence manually |
| Exception | Failure, timeout, invalid action | Happy path only |
| Role | Permission, visibility, ownership | Role name used without action scope |
| State | Lifecycle, transition, trigger | Status listed but not modeled |
| Dependency | Prerequisite, configuration, environment | Hidden setup condition |
| Version | API/product/doc version | Behavior drift |
| Localization | Source terms, UI labels, translated concepts | Inconsistent vocabulary |

## Output Pattern

Each analysis should produce:

- a behavior model;
- a state diagram;
- a sequence diagram;
- a decision or behavior matrix;
- a before/after documentation architecture;
- findings;
- recommendations;
- validation notes.

## Operating Rule

A documentation issue is treated as architectural when the user must combine several pages to answer one operational question.
