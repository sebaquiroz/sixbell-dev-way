# Rollout Plan — The Sixbell-Dev Way

This document defines the initial rollout strategy for The Sixbell-Dev Way.

The objective is not only to publish the standard, but to make it usable, understandable, and adopted.

## Rollout goals

Within the first 6 months, Sixbell should achieve:
- formal publication of The Sixbell-Dev Way
- internal socialization across the development team
- successful early demos using the standard
- first practical feedback loops
- first steps toward applying the standard to legacy products

## Principles of rollout

- Roll out in stages, not all at once
- Prefer a controlled pilot over broad unmanaged adoption
- Gather feedback from real usage, not only theory
- Improve the standard based on early project friction
- Keep the standard strict enough to matter, but usable enough to be adopted

## Phase 1 — Foundation (Weeks 1–4)

### Goals
- publish the initial repository
- align the team around the purpose of the standard
- install the baseline on a small pilot group

### Deliverables
- baseline repo created
- steering files ready
- hooks catalog defined
- internal skills ready
- MCP baseline ready
- templates ready
- onboarding guide ready
- PR template and review checklist ready

### Success criteria
- platform team can install and validate the baseline
- at least 2 developers can work with it successfully
- no critical blockers in installation or day-to-day usage

## Phase 2 — Controlled pilot (Weeks 5–8)

### Goals
- use The Sixbell-Dev Way in one real or near-real greenfield project
- validate the baseline against real development activity

### Deliverables
- one pilot project using official template
- at least one change fully driven through OpenSpec + Kiro
- PR and review process used end-to-end

### Questions to answer
- Is the workflow too heavy?
- Are hooks helpful or noisy?
- Are skills activating usefully?
- Is documentation staying aligned?
- Is the MCP baseline appropriate?
- Is the team experiencing too much context/tool overload?

### Success criteria
- pilot team completes at least one end-to-end feature/change
- issues are documented
- improvement backlog is created

## Phase 3 — Socialization and refinement (Weeks 9–12)

### Goals
- share lessons with the full team
- refine the standard based on pilot evidence

### Activities
- walkthrough sessions
- team demo
- feedback workshop
- prioritize friction points
- clarify governance ambiguities

### Expected refinements
- wording clarifications
- hook adjustments
- template improvements
- onboarding improvements
- MCP/power tuning

## Phase 4 — Product-oriented adoption (Months 4–5)

### Goals
- use the standard in a real Sixbell product initiative
- validate reusability and consistency goals

### Deliverables
- one product-oriented repo fully using the baseline
- project-specific workspace refinements where justified
- evidence that multiple developers can collaborate consistently

### Success criteria
- reduced ambiguity across team members
- predictable PR review process
- OpenSpec used as real change source of truth
- documentation and implementation remain aligned

## Phase 5 — Brownfield entry (Month 6)

### Goals
- begin applying The Sixbell-Dev Way to legacy or brownfield products in a controlled manner

### Scope
Do not attempt full legacy standardization at once.

Instead:
- choose one bounded refactor
- classify it using the risk model
- apply Sixbell governance discipline
- capture lessons for brownfield adoption guidance

## Governance during rollout

### Owner
Current owner: platform team

### Approval model
Current model: team consensus

### Review cadence
Initial review cadence: semestral

However, during rollout, more frequent working sessions may be needed.

## Metrics to track

### Adoption
- number of developers with baseline installed
- number of projects using official templates
- number of changes executed using OpenSpec workflow

### Process quality
- PRs using the official template
- review checklist usage rate
- documentation alignment rate
- number of skipped governance steps

### Engineering quality
- recurring architecture issues
- recurring security issues
- recurring template gaps
- onboarding friction reports

## Exit criteria for v1.0

The Sixbell-Dev Way can be considered ready for formal v1.0 when:
- the baseline works in practice
- the pilot cycle has completed
- the team understands the standard
- templates are usable
- governance is stable enough
- the standard has been applied successfully in at least one meaningful product effort