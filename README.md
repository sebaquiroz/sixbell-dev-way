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

The Sixbell-Dev Way installer does **not** provision an entire development machine from zero.

Before using this baseline, the team should already have or decide:
- Kiro installed
- access to this repository
- Node.js / `npx` available if the approved MCP or project scripts require it
- Docker available if GitHub MCP will be used
- `uv` or `uvx` available if AWS-related MCP servers will be used
- AWS credentials available when AWS-related tooling or projects require them

## What the installer does

The global installer is intentionally conservative.

It installs the global baseline into `~/.kiro/` by copying:
- steering
- approved skills
- approved MCP settings
- global governance hooks

## What the installer does not do

The installer does **not**:
- install Kiro
- install Node.js, Docker, `uv`, or `uvx`
- create a new product repository for you
- install project dependencies inside a template
- choose your final stack-specific formatter, linter, or test runner
- install an OpenSpec CLI or other external OpenSpec tooling

## OpenSpec in this baseline

OpenSpec is the source of truth for relevant changes in the methodology.

In the current Sixbell baseline, OpenSpec is enforced as:
- a workflow
- a required repository folder (`openspec/`)
- a set of required change artifacts and review expectations

This baseline currently **assumes the OpenSpec workflow and artifacts exist in the repository**.

It does **not** currently install or manage an external OpenSpec CLI or binary.

That means the safe interpretation today is:
- the methodology requires `openspec/` and its artifacts
- the installer prepares the Kiro baseline around that workflow
- if Sixbell later standardizes an official OpenSpec CLI distribution, the installer can be extended explicitly

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
- use the fullstack template as the default starting point when the correct shape is not yet fully known
- follow OpenSpec and Kiro guidance
- treat this standard as binding, not optional

## Quick start for Project 0

If the team wants to start immediately:

1. Clone this repository.
2. Run the global installer once per developer machine.
3. Create the new product repository from `baseline/templates/fullstack/`.
4. Open that new repository in Kiro.
5. Replace the template placeholder scripts with the real toolchain for the product.
6. Create the first OpenSpec change under `openspec/` before relevant implementation starts.

The installer prepares the **global Kiro baseline**.

The template prepares the **project repository skeleton**.

OpenSpec remains the **source of truth for the change itself**.

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