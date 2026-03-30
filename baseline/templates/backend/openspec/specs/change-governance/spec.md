# Capability: change-governance

## Purpose

Define how relevant backend project changes are proposed, reviewed, approved, and kept aligned with the repository's official OpenSpec workflow.

## Requirements

### Requirement: Relevant backend changes use official OpenSpec change artifacts

The repository SHALL represent relevant API, service, workflow, or governance changes through OpenSpec artifacts under `openspec/changes/` before implementation begins.

#### Scenario: Relevant backend change begins

- **WHEN** a contributor proposes a change that affects API behavior, service behavior, bootstrap flow, or governance
- **THEN** an active change directory SHALL exist under `openspec/changes/`
- **AND** the change SHALL describe the affected capabilities and intended impact

### Requirement: Review and human approval block implementation

The repository SHALL require the OpenSpec review artifact and explicit human approval before relevant implementation begins.

#### Scenario: Tasks exist without approval

- **WHEN** proposal, specs, design, or tasks exist without a completed review and explicit human approval
- **THEN** the change SHALL be treated as not ready for implementation

### Requirement: Documentation stays aligned with behavior changes

The repository SHALL update relevant documentation when API behavior, service behavior, architecture, or operational assumptions change.

#### Scenario: API or operational behavior changes

- **WHEN** a change affects public API behavior, operational assumptions, or architecture
- **THEN** the corresponding README, OpenAPI, ADR, runbook, or related documentation SHALL be reviewed and updated when needed
