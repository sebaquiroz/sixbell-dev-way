---
name: sixbell-openspec-governance
description: Guide structured change work using OpenSpec as the source of truth under The Sixbell-Dev Way. Use when defining a new change, validating a change proposal, refining design, or checking implementation readiness.
---

# Sixbell OpenSpec Governance

OpenSpec is the source of truth for product and engineering changes.

## Before implementation
Verify that the change has:
- objective
- requirements
- acceptance criteria
- technical design
- risks
- NFRs
- test strategy
- security impact
- cost impact
- tasks
- explicit human approval

## Risk-based rigor
Assign one of:
- low risk
- medium risk
- high risk

## Escalation conditions
Use higher rigor when the change involves:
- migrations
- architecture changes
- sensitive data
- high transversal impact

## Review task
When using this skill:
1. identify missing OpenSpec artifacts
2. identify under-specified decisions
3. identify missing approvals
4. identify missing traceability
5. recommend the next valid workflow step

Never recommend implementation when required governance artifacts are missing.