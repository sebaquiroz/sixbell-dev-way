---
name: sixbell-pr-review
description: Review pull requests or pending changes using The Sixbell-Dev Way checklist. Use when reviewing code before merge, validating readiness for PR, or checking whether a change satisfies Sixbell engineering standards.
---

# Sixbell PR Review

Use this skill whenever a change is about to be merged, submitted as a pull request, or reviewed for completion.

## Review dimensions

Evaluate the change across the following areas:

1. Requirements alignment
2. Design alignment
3. Architecture quality
4. Security posture
5. Testing completeness
6. Documentation completeness
7. Cost-awareness
8. Reuse potential across Sixbell products

## Review checklist

### 1. Requirements
- Is the change objective explicit?
- Are requirements and acceptance criteria reflected in the implementation?
- Does the implementation remain aligned with the intended scope?

### 2. Design
- Does the code align with the approved design?
- Were there design deviations?
- If so, do they require explicit documentation or an ADR?

### 3. Architecture
- Is the change modular and maintainable?
- Does it avoid spaghetti code, god objects, hidden coupling, or unnecessary complexity?
- Does it preserve clarity and low cognitive load?

### 4. Security
- Are secrets absent from source code?
- Were auth/authz concerns reviewed?
- Is there any unsafe handling of client-sensitive data?
- Are cloud assumptions secure by default?

### 5. Testing
- Are unit, integration, and E2E expectations satisfied where applicable?
- Are test cases meaningful, not superficial?
- Does the change preserve minimum coverage expectations?

### 6. Documentation
- Were README, API docs, CHANGELOG, diagrams, and ADRs updated when needed?

### 7. Cost
- Did the change introduce new AWS services, usage assumptions, or operational costs?
- If yes, was the impact documented or validated?

### 8. Final judgment
Classify findings as:
- Blocking
- Warning
- Suggestion

At the end, provide:
- PR readiness status
- blocking issues list
- warning list
- suggested follow-up items