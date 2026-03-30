# Operating Model — The Sixbell-Dev Way

This document explains how The Sixbell-Dev Way operates in practice.

It is the bridge between the baseline assets in this repository and the daily workflow a Sixbell team should follow when creating or evolving a product.

## Purpose

The purpose of this operating model is to make AI-assisted development:
- repeatable
- auditable
- secure by default
- understandable by the full team
- usable across multiple Sixbell products

## Operating layers

The Sixbell-Dev Way works across four layers:

### 1. Global baseline
Installed centrally through `baseline/global/install/`.

This layer provides:
- global steering
- approved global skills
- approved MCP configuration
- global governance hooks that are stack-agnostic

### 2. Project baseline
Created from an official project template under `baseline/templates/`.

This layer provides:
- repository structure
- local `.kiro/hooks/` for stack-specific automation
- `.github/` project governance assets
- documentation skeletons
- scripts expected by the local hooks

### 3. Domain powers
Activated only when needed.

This layer provides:
- domain-specific workflow overlays
- additional steering for delivery or product domains
- optional context that should not always be loaded

### 4. OpenSpec change artifacts
Stored inside the project repository and managed through the official OpenSpec model.

This layer provides:
- `openspec/specs/` as the current behavioral source of truth
- `openspec/changes/` as the structured space for active changes
- `openspec/changes/archive/` as the preserved change history
- `openspec/config.yaml` and optional custom schemas for repository-specific workflow behavior

## Source of truth hierarchy

When there is ambiguity, use this order of precedence:

1. approved current specs under `openspec/specs/`
2. approved active change artifacts under `openspec/changes/`
3. approved repository governance files
4. approved baseline rules from The Sixbell-Dev Way
5. implementation in code
6. chat history

Chat is useful for collaboration, but it is not the authoritative change definition.

## Roles and responsibilities

### Developer
Responsible for:
- working from the approved baseline
- creating or updating OpenSpec artifacts before relevant implementation
- using approved tools and catalogs
- preserving documentation alignment

### Reviewer
Responsible for:
- checking change quality using the review checklist
- validating risk classification
- confirming security, testing, and documentation discipline
- recommending approval, revision, or escalation

### Platform team
Responsible for:
- maintaining The Sixbell-Dev Way baseline
- curating approved skills, hooks, powers, and MCP servers
- refining templates and onboarding material
- reviewing baseline evolution

### Approval authority
Current working model:
- human approval is mandatory before implementation
- baseline changes are approved through team consensus
- high-risk product changes require stronger explicit sign-off

## Standard workflow for a product change

For any relevant change, follow this order:

### Step 1 — Clarify the change
Make the objective explicit.

At minimum, define:
- objective
- scope
- expected outcome
- initial risk intuition

### Step 2 — Create the OpenSpec change
Relevant changes must be represented in OpenSpec before implementation.

For Sixbell repositories, the expected active change structure is:
- `openspec/changes/<change-name>/proposal.md`
- `openspec/changes/<change-name>/specs/`
- `openspec/changes/<change-name>/design.md`
- `openspec/changes/<change-name>/review.md`
- `openspec/changes/<change-name>/tasks.md`

Include when applicable:
- requirements
- acceptance criteria
- technical design
- governance review
- risks
- non-functional requirements
- test strategy
- security impact
- cost impact
- tasks

### Step 3 — Classify risk
Classify the change as:
- low
- medium
- high

Use `governance/risk-matrix.md` as the operational reference.

### Step 4 — Obtain human approval
Implementation does not start until:
- the change was reviewed
- the design was reviewed
- the governance review exists
- the tasks were reviewed against the approved review outcome
- the risk was identified
- human approval exists

### Step 5 — Implement with the baseline active
During implementation:
- use Kiro as the main environment
- follow steering rules
- use Context7 for external technology work
- use approved MCP servers only
- use project hooks and global governance hooks

### Step 6 — Validate the change
Before recommending a PR or merge:
- run lint and formatting checks
- run unit tests
- run integration tests where applicable
- run E2E tests where applicable
- run smoke validation where applicable
- perform architecture/security review as required by risk

### Step 7 — Review and document
Align code with:
- README
- API docs / OpenAPI
- ADRs
- CHANGELOG
- architecture diagrams

### Step 8 — Archive and sync
After the change is accepted:
- sync delta specs into `openspec/specs/`
- move the completed change into `openspec/changes/archive/`
- sync documentation
- capture any baseline lesson that should become reusable guidance

## Standard workflow for a new project

### Step 1 — Choose the correct template
Use one of:
- `baseline/templates/fullstack/`
- `baseline/templates/frontend/`
- `baseline/templates/backend/`

The fullstack template is the reference baseline for Project 0.

### Step 2 — Bootstrap the repository
The new repository should start with the required structure defined in `baseline/global/kiro/steering/structure.md`.

### Step 3 — Install the global baseline
Install the global baseline so the developer environment has:
- steering
- approved skills
- approved MCP servers
- global governance hooks
- the official OpenSpec CLI

This step does not bootstrap the product repository itself.

### Step 4 — Keep project-specific automation local
Project-specific hooks, scripts, `.github/` files, and delivery mechanics belong inside the project template.

This avoids forcing one stack's commands on another stack.

### Step 5 — Bootstrap OpenSpec tool assets for the project
Once the repository exists, run the project bootstrap so the repository can generate its official OpenSpec assets for approved tool surfaces such as Kiro and GitHub Copilot.

In the current Node-based templates, that means running:
- `npm run bootstrap:openspec`
- `npm run bootstrap:verify`

Sixbell templates keep governance files, hooks, and documentation in version control, while OpenSpec generates the tool-facing workflow assets during project bootstrap.

### Step 6 — Create or update OpenSpec artifacts in the repository
Once the repository is bootstrapped, the team works inside the project's own `openspec/` tree using the `sixbell-governed` schema unless an approved exception exists.

## Hook model

The Sixbell-Dev Way uses a hybrid hook model.

### Global hooks
Global hooks should be limited to governance or review actions that are broadly reusable, such as:
- spec gates
- manual architecture review
- manual security review

These hooks should validate the official OpenSpec structure, not a simplified or tool-specific approximation of it.

### Project hooks
Project hooks should handle stack-specific actions, such as:
- formatting
- linting
- unit tests
- smoke tests
- local documentation sync behavior

This prevents false assumptions such as using `npm` in projects that are not Node-first.

## Context7 and MCP model

### Context7
Context7 is the default documentation assistant for:
- libraries
- frameworks
- SDKs
- migrations
- setup instructions
- version-sensitive API usage

### MCP activation
Use only approved MCP servers.

Default baseline:
- Context7
- AWS Docs
- GitHub

Conditional baseline:
- AWS Pricing

### Validation rule
If the output influences:
- architecture
- security
- cost
- migration strategy

then validate it against official documentation or human review before treating it as final.

## What must never be automated without human supervision

The following are always prohibited without human supervision:
- merge to main
- PR approval
- production deployment
- execution of high-risk changes

## Exceptions and escalation

If the team needs to deviate from the baseline:
- document the reason
- classify the risk
- obtain explicit approval
- update project documentation if the deviation is intentional

If uncertainty remains, escalate rather than guess.

## Working definition of done

A change is done only when:
- the code is implemented
- the required OpenSpec artifacts exist
- the required tests passed
- required reviews were completed
- required documentation was updated
- the change is safe to recommend for PR or merge review

Anything less is still work in progress.
