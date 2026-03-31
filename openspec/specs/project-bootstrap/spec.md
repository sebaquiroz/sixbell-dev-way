# Capability: project-bootstrap

## Purpose

Define how official Sixbell templates bootstrap a new repository into an OpenSpec-native project ready for approved Kiro and GitHub Copilot workflows.

## Requirements

### Requirement: Official templates create OpenSpec-native repositories

A repository created from an official Sixbell template SHALL contain an `openspec/` tree aligned with the official OpenSpec model.

#### Scenario: New project is created from a Sixbell template

- **WHEN** the template is copied into a new repository
- **THEN** the repository SHALL contain `openspec/config.yaml`, `openspec/specs/`, `openspec/changes/`, and `openspec/changes/archive/`
- **AND** the repository SHALL be ready to use the approved Sixbell schema or an approved exception

### Requirement: Official templates include workspace-local Kiro hooks

A repository created from an official Sixbell template SHALL include `.kiro/hooks/` with the governance hooks required by The Sixbell-Dev Way and the automation hooks compatible with that template.

#### Scenario: New project is created from a Sixbell template

- **WHEN** the template is copied into a new repository
- **THEN** `.kiro/hooks/` SHALL contain the governance hooks required by the baseline
- **AND** any hook that executes repository commands SHALL match scripts or files shipped with that template

### Requirement: Project bootstrap generates official tool-facing OpenSpec assets

The project bootstrap SHALL generate the approved OpenSpec assets required for supported tool surfaces such as Kiro and GitHub Copilot.

#### Scenario: Template bootstrap runs successfully

- **WHEN** the team runs the project OpenSpec bootstrap
- **THEN** the repository SHALL generate the official tool-facing OpenSpec assets for the approved surfaces
- **AND** the generated assets SHALL align with the repository's OpenSpec configuration

### Requirement: Project bootstrap includes validation for OpenSpec readiness

The project bootstrap SHALL provide a validation path that confirms the repository is structurally ready to use OpenSpec and Sixbell governance.

#### Scenario: Team validates a freshly bootstrapped repository

- **WHEN** the team runs the bootstrap validation check
- **THEN** the check SHALL confirm the expected OpenSpec structure and generated assets exist
- **AND** it SHALL fail clearly when the repository is only partially bootstrapped
