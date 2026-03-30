# Capability: change-governance

## Purpose

Define how relevant frontend project changes are proposed, reviewed, approved, and kept aligned with the repository's official OpenSpec workflow.

## Requirements

### Requirement: Relevant frontend changes use official OpenSpec change artifacts

The repository SHALL represent relevant UI, asset, workflow, or governance changes through OpenSpec artifacts under `openspec/changes/` before implementation begins.

#### Scenario: Relevant frontend change begins

- **WHEN** a contributor proposes a change that affects UI behavior, public assets, bootstrap flow, or governance
- **THEN** an active change directory SHALL exist under `openspec/changes/`
- **AND** the change SHALL describe the affected capabilities and intended impact

### Requirement: Review and human approval block implementation

The repository SHALL require the OpenSpec review artifact and explicit human approval before relevant implementation begins.

#### Scenario: Tasks exist without approval

- **WHEN** proposal, specs, design, or tasks exist without a completed review and explicit human approval
- **THEN** the change SHALL be treated as not ready for implementation

### Requirement: Documentation stays aligned with behavior changes

The repository SHALL update relevant documentation when UI behavior, asset delivery, architecture, or operational assumptions change.

#### Scenario: UI behavior changes

- **WHEN** a change affects user-visible behavior, public assets, or operational assumptions
- **THEN** the corresponding README, ADR, usage notes, or related documentation SHALL be reviewed and updated when needed
