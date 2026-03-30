# The Sixbell-Dev Way

The Sixbell-Dev Way is Sixbell's corporate standard for AI-assisted software development.

It exists to ensure that all new Sixbell technology solutions are built in a consistent, secure, auditable, and reusable way.

## Why this standard exists

Sixbell needs to create maintainable and reusable products that can be sold to clients and evolved over time.

At the same time, AI-assisted development tools are already being used across the engineering team. Without a shared standard, this leads to fragmented solutions, inconsistent design decisions, and lower maintainability across repositories.

The Sixbell-Dev Way defines a common engineering baseline so that:
- all developers work in a similar way,
- all new products share the same quality and governance model,
- changes remain traceable,
- solutions can be maintained by the entire team, not just their original author.

## Core objectives

The Sixbell-Dev Way prioritizes:
- homogeneity across developers and products
- security by default
- traceability and auditability
- reuse across projects

## Operating model

The Sixbell-Dev Way is built around the following decisions:

- **Kiro** is the main execution environment for day-to-day development.
- **OpenSpec** is the source of truth for relevant product and engineering changes.
- **Kiro Specs** may be used for exploration and prototyping only.
- **Human approval** is mandatory before implementation.
- **Risk-based rigor** determines how much review and governance a change requires.
- **AWS-first** is the non-negotiable cloud policy.

## What this repository contains

This repository provides the baseline needed to standardize AI-assisted development across Sixbell.

### 1. Global baseline
Located under `baseline/global/`, this includes:
- Kiro steering files
- Kiro global skills
- MCP configuration
- installation scripts

### 2. Project templates
Located under `baseline/templates/`, this includes:
- frontend template
- backend template
- fullstack template

### 3. Powers
Located under `baseline/powers/`, this includes Sixbell-specific Kiro powers.

### 4. Governance
Located under `governance/`, this includes:
- review checklist
- risk matrix
- decision log

### 5. Documentation
Located under `docs/`, this includes:
- onboarding guide
- rollout plan

## Repository principles

This repository should be treated as:
- the engineering baseline for Sixbell AI-assisted development,
- a versioned standard,
- a living artifact that evolves through team consensus,
- a corporate asset, not an individual preference set.

## Main rules

### Source of truth
OpenSpec is the source of truth for structured changes.

### Security
Security is mandatory and must be considered by default.

### Documentation
Documentation must remain aligned with code and decisions when relevant.

### Approval
No relevant implementation should begin without explicit human approval.

### Prohibited automation
The following must never happen without human supervision:
- merge to main
- PR approval
- production deployment
- execution of high-risk changes

## Recommended repository usage

### For platform/owners
- evolve the baseline
- review proposals for baseline changes
- version the standard
- maintain installation assets

### For developers
- install the baseline
- create new projects from the official templates
- follow OpenSpec and Kiro guidance
- treat this standard as binding, not optional

## Versioning model

The Sixbell-Dev Way is versioned formally.

Changes to this standard should:
- be documented
- be reviewed
- be recorded in the changelog
- be reflected in governance artifacts if necessary

## Success criteria

The first success milestone for this standard is:
- formal publication of The Sixbell-Dev Way
- team-wide socialization
- successful early demos using the standard
- first steps toward applying the standard to legacy products

## Related files

- `CONTRIBUTING.md`
- `CHANGELOG.md`
- `docs/onboarding.md`
- `docs/rollout-plan.md`
- `governance/review-checklist.md`
- `governance/risk-matrix.md`
- `governance/decision-log.md`