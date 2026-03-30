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

## Before you start

The Sixbell-Dev Way installer does **not** provision an entire development machine from zero, but it now does provision the official OpenSpec CLI when the machine meets the prerequisite.

Before using this baseline, the team should already have or decide:
- Kiro installed
- access to this repository
- Node.js 20.19.0 or higher available so the baseline can install and update the official OpenSpec CLI
- Docker available if GitHub MCP will be used
- `uv` or `uvx` available if AWS-related MCP servers will be used
- AWS credentials available when AWS-related tooling or projects require them

## What the installer does

The global installer is intentionally conservative about machine setup, but explicit about the Sixbell engineering baseline.

It installs the global baseline into `~/.kiro/` by copying:
- steering
- approved skills
- approved MCP settings
- global governance hooks

It also:
- verifies the Node.js prerequisite for OpenSpec
- installs or updates the official Fission-AI OpenSpec CLI
- leaves the machine ready to bootstrap OpenSpec-native Sixbell repositories

## What the installer does not do

The installer does **not**:
- install Kiro
- install Node.js, Docker, `uv`, or `uvx`
- create a new product repository for you
- install project dependencies inside a template
- choose your final stack-specific formatter, linter, or test runner
- bootstrap project-local OpenSpec assets for Kiro or GitHub Copilot by itself

## OpenSpec in this baseline

The Sixbell-Dev Way adopts the official Fission-AI OpenSpec workflow as the formal engine for relevant changes.

In this model:
- `openspec/specs/` is the live source of truth for current agreed behavior
- `openspec/changes/` contains active or proposed changes
- `openspec/changes/archive/` preserves completed change history
- the official OpenSpec CLI manages initialization, workflow assets, and schema-aware change scaffolding

Sixbell extends the official engine with corporate governance.

That means:
- OpenSpec provides the formal change structure and lifecycle
- Sixbell provides the approval gates, risk discipline, security posture, AWS-first rules, and review expectations
- if OpenSpec guidance and Sixbell governance ever conflict locally, Sixbell governance wins inside Sixbell repositories

This repository itself follows that direction and is being evolved to use official OpenSpec semantics for its own baseline changes.

## What this repository contains

This repository provides the baseline needed to standardize AI-assisted development across Sixbell.

### 1. Global baseline
Located under `baseline/global/`, this includes:
- Kiro steering files
- Kiro global skills
- governance-oriented global hooks
- MCP configuration
- installation scripts

### 2. Project templates
Located under `baseline/templates/`, this includes:
- frontend template
- backend template
- fullstack template (reference template for Project 0)

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
- operating model
- rollout plan

## Repository principles

This repository should be treated as:
- the engineering baseline for Sixbell AI-assisted development,
- a versioned standard,
- a living artifact that evolves through team consensus,
- a corporate asset, not an individual preference set.

## Main rules

### Source of truth
`openspec/specs/` is the source of truth for current structured behavior.

Approved active changes under `openspec/changes/` define in-flight modifications until they are synced and archived.

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
- use the fullstack template as the default starting point when the correct shape is not yet fully known
- follow OpenSpec and Kiro guidance
- treat this standard as binding, not optional

## Quick start for Project 0

If the team wants to start immediately:

1. Clone this repository.
2. Run the global installer once per developer machine.
3. Create the new product repository from `baseline/templates/fullstack/`.
4. In the new repository, run `npm run bootstrap:openspec` and then `npm run bootstrap:verify`.
5. Open that new repository in Kiro.
6. Replace the template placeholder scripts with the real toolchain for the product.
7. Create the first OpenSpec change under `openspec/changes/` before relevant implementation starts.

The installer prepares the **global Kiro baseline and the OpenSpec CLI**.

The template prepares the **project repository skeleton and OpenSpec project scaffold**.

OpenSpec remains the **formal change engine and behavioral source of truth**.

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
- `docs/operating-model.md`
- `docs/rollout-plan.md`
- `governance/review-checklist.md`
- `governance/risk-matrix.md`
- `governance/decision-log.md`