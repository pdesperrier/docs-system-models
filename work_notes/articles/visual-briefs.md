# Visual briefs for portfolio articles

## Decision

Add visuals after the Markdown pages are integrated and reviewed.

Do not block publication on visuals. The articles work without them.

Visuals should support System Interpretability. They should not act as decorative covers only.

## Recommended visual set

| Article | Required visual | Optional visual | Purpose |
|---|---|---|---|
| Making Rules Visible | Behavior chain diagram | Behavior Matrix excerpt | Show `action -> effects -> conditions -> exceptions -> recovery` |
| Why Documentation Fails | Fragment-to-model diagram | Failure sequence diagram | Show the shift from pages to system behavior |
| Designing for Mental Models | Layered mental model diagram | Role-permission divergence map | Show how users form operational understanding |
| AI Knowledge Architecture | Retrieval grounding diagram | Source traceability map | Show how structured knowledge supports AI answers |

## File paths

```text
docs/assets/articles/making-rules-visible/behavior-chain.png
docs/assets/articles/why-documentation-fails/fragment-to-model.png
docs/assets/articles/designing-for-mental-models/model-layers.png
docs/assets/articles/ai-knowledge-architecture/grounding-map.png
```

## Visual style

Use the existing portfolio visual direction:

- quiet architectural composition;
- muted warm stone, grey, beige, pale blue-grey, subtle gold;
- no decorative text embedded in the image;
- fine graphite lines;
- layered systems, nodes, states, paths, dependency lines;
- 16:9 format for article covers;
- optional 4:5 format only for LinkedIn reuse.

## Accessibility requirements

Each visual added to the portfolio should include:

- descriptive alt text;
- no essential meaning carried by color alone;
- sufficient contrast;
- simple diagram geometry;
- a text equivalent in the article body when the visual explains a model.

## Alt text drafts

### Making Rules Visible

Diagram showing a product action connected to effects, conditions, exceptions, and recovery paths, illustrating how Behavioral Documentation reduces Reconstruction Effort.

### Why Documentation Fails

Diagram showing fragmented documentation pages converging into a system behavior model with states, conditions, dependencies, transitions, and exceptions.

### Designing for Mental Models

Layered diagram showing how interface signals, documentation, API behavior, support replies, and release notes shape a user’s mental model.

### AI Knowledge Architecture

Diagram showing an AI assistant retrieving answers from structured concepts, dependencies, conditions, exceptions, and traceable sources.
