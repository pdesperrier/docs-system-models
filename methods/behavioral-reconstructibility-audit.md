# Behavioral Reconstructibility Audit

A behavioral reconstructibility audit examines whether a reader can reconstruct system behavior from documentation without inventing missing logic.

It does not ask:

- Is the documentation well written?
- Is the page clear?
- Is the workflow easy to follow?

It asks:

- What behavior is explicitly documented?
- What behavior is only implied?
- What behavior is not observable?
- Where do sources diverge?
- Which workflow states cannot be reconstructed safely?

## Core output

The audit produces a map of reconstructibility limits:

- stable branches
- fragile branches
- volatile branches
- collapsing areas
- not-yet-reconstructible areas
- non-reconstructible areas

## Example

If an API reference describes `Admin approval`, while a UI guide describes `Manager approval`, the audit does not merge them into a single role model.

It preserves both as branch-local truths until evidence proves equivalence.
