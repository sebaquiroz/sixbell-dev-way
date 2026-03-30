---
inclusion: always
---

# The Sixbell-Dev Way — Product Context

## Purpose
The Sixbell-Dev Way is Sixbell's corporate standard for AI-assisted software development.

Its purpose is to ensure that all new technology solutions created by Sixbell follow a consistent engineering approach, with:
- homogeneity across developers and products,
- security by default,
- traceability of decisions and changes,
- reusable technical patterns across projects,
- strong human control over implementation decisions.

## Business Goal
Sixbell needs to create reusable and maintainable productized solutions ("Sixbell products") that can be sold to clients and maintained consistently over time.

This standard exists to prevent fragmented AI-assisted development practices, reduce divergence between teams and repositories, and provide a common way of working for the entire engineering team.

## Core Principles
- Every relevant change must be structured before implementation.
- Human approval is mandatory before coding starts.
- The reason behind each change must be explicit and versioned.
- Product consistency is more important than ad-hoc local optimization.
- Security and maintainability are first-class concerns.
- Reuse is preferred over one-off project-specific improvisation.

## Delivery Philosophy
Sixbell products should be:
- understandable by any developer in the team,
- secure by default,
- aligned with AWS-first architecture,
- documented enough to support maintenance and evolution,
- designed for reuse across multiple customer scenarios with minimal customization.

## Role of AI
AI is used as an engineering accelerator, not as an autonomous decision-maker.

AI may:
- help structure requirements,
- propose design alternatives,
- generate tasks,
- generate code,
- generate tests,
- assist with documentation,
- assist with reviews.

AI may not:
- bypass approvals,
- make production-impacting decisions without human sign-off,
- merge directly to main,
- approve pull requests,
- deploy to cloud environments without human authorization.