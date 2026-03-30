# Contributing to The Sixbell-Dev Way

This repository defines Sixbell's corporate engineering baseline for AI-assisted software development.

Because of that, changes to this repository must be handled with care. This is not a sandbox for personal preferences; it is a team standard that affects how Sixbell builds and maintains products.

## Guiding principle

Every change to The Sixbell-Dev Way must improve one or more of the following without damaging the others:
- consistency
- security
- traceability
- reuse
- maintainability
- usability by the full team

## Who can propose changes

Any team member can propose an improvement to the standard.

However, no change should be merged casually. All baseline changes must be discussed and reviewed under the team governance model.

## Ownership model

Current working assumption:
- the **platform team** is the owner of the standard
- changes are currently approved through **team consensus**
- the approval model may become more formal later

## What kinds of changes belong here

Examples of valid changes:
- improving steering files
- improving internal skills
- improving hooks guidance
- improving templates
- improving onboarding material
- refining review checklists
- refining the risk matrix
- updating installation steps
- clarifying governance and rollout process

Examples of changes that do **not** belong here unless justified:
- personal preferences that do not improve the corporate baseline
- one-off project-specific exceptions
- changes that reduce security or traceability without strong rationale
- experimental changes with no adoption plan

## Contribution workflow

### 1. Open a structured change
Use the agreed structured change process.

If the team is using OpenSpec for governance of this repository as well, create a proper change proposal before implementation.

### 2. Explain the reason
Every proposal must answer:
- what problem is being solved
- why the current baseline is insufficient
- what risk the change introduces
- what impact the change has on onboarding, governance, or maintenance
- whether existing repositories will need migration or adaptation

### 3. Keep the scope explicit
Avoid mixing unrelated updates in the same change.

### 4. Review required
Changes to this repository require human review.

The following areas must be reviewed when relevant:
- security implications
- compatibility with current templates
- impact on Kiro/OpenSpec usage
- impact on onboarding
- impact on operating costs or cognitive overhead

### 5. Update required artifacts
If the baseline changes, update all relevant artifacts:
- README
- CHANGELOG
- onboarding guide
- rollout plan
- risk matrix
- review checklist
- templates
- installation scripts
- skills / steering / powers / MCP config

## Pull request expectations

Every PR should include:
- summary of the change
- reason for the change
- affected areas
- whether onboarding is impacted
- whether existing projects are impacted
- whether a migration note is required

## Quality expectations

Changes to this repository should be:
- explicit
- readable
- reviewable
- maintainable
- aligned with The Sixbell-Dev Way itself

In other words, this repository must follow the same discipline it expects from product repositories.

## Review questions

Before approving a change to this repository, reviewers should ask:

1. Does this improve the standard or just add noise?
2. Does it preserve or strengthen security?
3. Does it preserve or strengthen traceability?
4. Does it reduce ambiguity for the team?
5. Does it make onboarding easier or harder?
6. Does it introduce extra tools or complexity without enough value?
7. Does it remain compatible with AWS-first and OpenSpec-first decisions?
8. Does it create drift between documentation and actual baseline assets?

## Breaking changes

If a baseline change is breaking, the proposal must include:
- what breaks
- who is affected
- what migration path is required
- whether the change should wait for a later version

## Changelog discipline

Every accepted change must be reflected in `CHANGELOG.md`.

## Final rule

Do not optimize this repository for one person's convenience.

Optimize it for Sixbell's long-term engineering consistency.