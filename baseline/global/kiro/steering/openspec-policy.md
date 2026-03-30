---
inclusion: always
---

# The Sixbell-Dev Way — OpenSpec Policy

## Source of Truth Rule
OpenSpec is the source of truth for product and engineering changes in Sixbell projects.

This means that relevant changes must be represented through structured OpenSpec artifacts before implementation begins.

## Mandatory OpenSpec Artifacts
Before implementation, the following must be explicit when applicable:
- objective of the change
- functional requirements
- acceptance criteria
- technical design
- risks
- non-functional requirements
- task breakdown
- testing strategy
- security impact
- cost impact

## Change Workflow Rule
Every relevant change must start as an OpenSpec change proposal.

The expected structured workflow is:
1. propose
2. explore / refine
3. design
4. task breakdown
5. verify
6. implement
7. sync / archive

## Approval Gate Rule
No implementation may begin until:
- the change has been reviewed
- the design has been reviewed
- the tasks have been reviewed
- the risk level has been identified
- explicit human approval has been granted

## Versioning Rule
Specifications and change artifacts must be versioned in the repository.

The reason behind a change is as important as the code implementing it.

## Kiro Specs Rule
Kiro native specs may be used only for exploration and prototyping.

Kiro Specs are not the primary source of truth for production changes in Sixbell projects.

## Brownfield Rule
Refactors and legacy changes must still follow OpenSpec discipline.

If the change affects multiple areas, architecture, migration logic, or sensitive behavior, use a higher-rigor workflow.

## Documentation Alignment Rule
If a change affects:
- public behavior
- APIs
- architectural decisions
- operational assumptions

then related documentation must also be updated.