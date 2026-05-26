# Case Brief — Fintech Qonto Role Permission Payment Behavior Model

## Domain

Fintech

## Behavior analyzed

role, permission, request visibility, and payment-request behavior

## Reconstructive question

What behavior can be reconstructed from the available documentation without inventing missing transitions, permissions, states, retries, rollback semantics, or causal links?

## Exact scope

How Qonto role and plan conditions determine request visibility and payment-request action boundaries across API and support documentation.

## Why this case matters

This case matters because fintech documentation must make role boundaries operationally reconstructible. When request visibility, payment-request actions, plan limits, sub-account access, and approval workflow rules sit on different documentation surfaces, users and integrators must rebuild the access model manually.

## Current status

- Corpus collected: partial
- Internal audit completed: no
- Evidence validated: partial
- Portfolio-safe version prepared: no

## Public-safe summary

Qonto exposes a narrow reconstruction problem around roles, request visibility, and payment-related actions. API documentation describes request visibility by role and plan, while support documentation describes role capabilities, sub-account access, and approval workflows. The case should preserve the distinction between documented visibility, documented action permissions, and unverified permission inheritance.
