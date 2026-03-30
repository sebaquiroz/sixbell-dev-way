---
inclusion: always
---

# The Sixbell-Dev Way — OpenSpec Policy

## Source of Truth Rule
OpenSpec is the source of truth for product and engineering changes in Sixbell projects.

This means that:
- `openspec/specs/` is the current agreed behavioral source of truth
- `openspec/changes/` contains active changes and their artifacts
- `openspec/changes/archive/` contains completed and preserved change history

Relevant changes must be represented through structured OpenSpec artifacts before implementation begins.

## Mandatory OpenSpec Artifacts
Before implementation, the following must be explicit when applicable:
- objective of the change
- functional requirements
- acceptance criteria
- technical design
- governance review
- risks
- non-functional requirements
- task breakdown
- testing strategy
- security impact
- cost impact
- rollback or migration considerations

## Change Workflow Rule
Every relevant change must start as an OpenSpec change under `openspec/changes/<change-name>/`.

Sixbell uses official OpenSpec semantics with a custom schema named `sixbell-governed`.

The expected artifact flow is:
1. proposal
2. specs
3. design
4. review
5. tasks
6. implement
7. verify
8. sync / archive

Tooling may expose this flow through core or expanded OPSX commands depending on project bootstrap configuration.

## Approval Gate Rule
No implementation may begin until:
- the change has been reviewed
- the design has been reviewed
- the review artifact has classified the change appropriately
- the tasks are aligned with the approved review outcome
- the risk level has been identified
- explicit human approval has been granted

## Versioning Rule
Specifications and change artifacts must be versioned in the repository.

The reason behind a change is as important as the code implementing it.

Generated OpenSpec assets for approved tools should also be versioned when the repository bootstrap model depends on them.

## Kiro Specs Rule
Kiro native specs may be used only for exploration and prototyping.

Kiro Specs are not the primary source of truth for production changes in Sixbell projects.

## Brownfield Rule
Refactors and legacy changes must still follow OpenSpec discipline.

If the change affects multiple areas, architecture, migration logic, or sensitive behavior, use a higher-rigor workflow.

Use delta specs to describe modifications against the current source of truth instead of rewriting whole specs unnecessarily.

## Documentation Alignment Rule
If a change affects:
- public behavior
- APIs
- architectural decisions
- operational assumptions

then related documentation must also be updated.

## Sixbell Precedence Rule
Official OpenSpec behavior is adopted as the engine of change management.

However, Sixbell governance remains the controlling layer for:
- approval requirements
- security expectations
- risk handling
- AWS-first constraints
- documentation and review obligations

When local Sixbell rules conflict with the most generic OpenSpec default, Sixbell rules take precedence inside Sixbell repositories.