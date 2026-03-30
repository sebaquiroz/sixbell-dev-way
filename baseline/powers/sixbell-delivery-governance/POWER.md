---
name: "sixbell-delivery-governance"
displayName: "Sixbell Delivery Governance"
description: "Apply The Sixbell-Dev Way to delivery workflows, change governance, review readiness, and release discipline."
keywords: [
  "review",
  "pull request",
  "pr",
  "delivery",
  "release",
  "merge",
  "readiness",
  "governance",
  "approval",
  "openspec",
  "architecture review",
  "security review"
]
---

# Sixbell Delivery Governance Power

This power activates The Sixbell-Dev Way delivery discipline.

Use it when:
- preparing a pull request
- reviewing implementation readiness
- validating whether a change can move forward
- checking if documentation, tests, and approvals are complete
- preparing a release or internal demo

## Onboarding

### Step 1: Confirm project baseline
Ensure the repository includes:
- `openspec/`
- `.kiro/steering/`
- `.kiro/hooks/`
- `.github/`
- `README.md`
- `CHANGELOG.md`
- `AGENTS.md`

If any of these are missing, report it and recommend the correct baseline structure.

### Step 2: Confirm governance artifacts
Before implementation or review, verify:
- the change exists in OpenSpec
- risk level is explicit
- design is explicit
- tasks are explicit
- human approval exists
- security impact is considered
- cost impact is considered

### Step 3: Review readiness
Before PR or merge recommendation, verify:
- format/lint/build status
- test status
- documentation status
- architecture concerns
- security concerns
- cost-awareness
- ADR need

### Step 4: Escalation logic
If the change is medium or high risk:
- request stronger review discipline
- require architecture review
- require security review
- require explicit human approval before proceeding

## Behavioral Rules

- Never recommend merging without human approval.
- Never recommend deploying without human approval.
- Never treat chat history as the change source of truth.
- Prefer OpenSpec artifacts and repository evidence.
- Keep The Sixbell-Dev Way as the governing standard.

## Expected Output
When activated, produce:
1. current governance status
2. missing artifacts
3. blocking issues
4. warnings
5. next safe step