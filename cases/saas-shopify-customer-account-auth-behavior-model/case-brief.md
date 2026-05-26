# Case Brief — SaaS Shopify Customer Account Auth Behavior Model

## Domain

SaaS / Commerce

## Behavior analyzed

customer account authentication, identity-provider session behavior, legacy token creation, and token expiration behavior

## Reconstructive question

What behavior can be reconstructed from the available documentation without inventing missing transitions, permissions, states, retries, rollback semantics, or causal links?

## Exact scope

How Shopify Customer Account API authentication differs from legacy Storefront CustomerAccessToken behavior.

## Why this case matters

This case matters because authentication documentation often separates current account behavior, identity-provider flows, legacy token flows, token expiry, and migration guidance. Developers must reconstruct which token model applies to which customer account type.

## Current status

- Corpus collected: partial
- Internal audit completed: no
- Evidence validated: partial
- Portfolio-safe version prepared: no

## Public-safe summary

Shopify exposes a focused reconstruction problem around customer account authentication. Customer Account API documentation describes a newer authentication system for customer-scoped data and authenticated actions. Customer authentication documentation routes new accounts through an identity provider and states that legacy Multipass or Storefront token flows do not support new customer accounts. Storefront API documentation marks CustomerAccessToken behavior as legacy-only, with expiration and renewal behavior. The case remains a warm backlog skeleton until exchange flows, migration paths, and failure states are validated.
