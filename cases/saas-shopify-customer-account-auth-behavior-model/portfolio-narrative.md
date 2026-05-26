# Portfolio Narrative — SaaS Shopify Customer Account Auth Behavior Model

## Public narrative

Shopify exposes a focused reconstruction problem around customer account authentication. Customer Account API documentation describes a newer authentication system for customer-scoped data and authenticated actions. Customer authentication documentation routes new accounts through an identity provider and states that legacy Multipass or Storefront token flows do not support new customer accounts. Storefront API documentation marks CustomerAccessToken behavior as legacy-only, with expiration and renewal behavior. The case remains a warm backlog skeleton until exchange flows, migration paths, and failure states are validated.

The analysis does not force a single workflow.

It separates reconstructible behavior from not-yet-reconstructible behavior and keeps unresolved gaps visible.

## What this demonstrates

- ability to analyze behavioral documentation
- ability to make dependency visibility explicit
- ability to preserve unresolved operational gaps
- ability to separate documented behavior from inferred behavior
- ability to translate documentation fragmentation into reconstruction effort
- ability to produce evidence-safe portfolio material

## Short version

Shopify Customer Account Auth Behavior Model examines how a narrow documented behavior becomes harder to reconstruct when the relevant evidence is distributed across several documentation surfaces.

## Offer connection

Primary offer: Reconstructibility Audit Sprint.

Secondary offer: Documentation Topology Assessment.
