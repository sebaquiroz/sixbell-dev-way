# Capability: project-bootstrap

## Purpose

Define how a repository created from the Sixbell backend template becomes ready for official OpenSpec workflows in Kiro and GitHub Copilot.

## Requirements

### Requirement: The template ships with an OpenSpec-native repository tree

A repository created from this template SHALL include an OpenSpec tree containing project config, live specs, active changes, archive space, and the approved Sixbell schema.

#### Scenario: New repository is created from the template

- **WHEN** the template is copied into a new repository
- **THEN** the repository SHALL contain `openspec/config.yaml`, `openspec/specs/`, `openspec/changes/`, and `openspec/changes/archive/`
- **AND** the repository SHALL include the `sixbell-governed` schema files required for local validation

### Requirement: The template includes workspace-local governance hooks

A repository created from this template SHALL include `.kiro/hooks/` with the governance hooks required by The Sixbell-Dev Way and the automation hooks compatible with the backend template.

#### Scenario: New repository is created from the template

- **WHEN** the template is copied into a new repository
- **THEN** `.kiro/hooks/` SHALL contain the governance hooks required by the baseline
- **AND** any hook that executes repository commands SHALL match scripts or files shipped with the backend template

### Requirement: Bootstrap generates official Kiro and GitHub Copilot assets

The project bootstrap SHALL generate the official OpenSpec prompts and skills for the approved tool surfaces.

#### Scenario: Team runs OpenSpec bootstrap

- **WHEN** `npm run bootstrap:openspec` is executed successfully
- **THEN** the repository SHALL generate official OpenSpec prompts and skills under `.kiro/` and `.github/`
- **AND** the generated assets SHALL align with the repository's OpenSpec configuration

### Requirement: Bootstrap verification detects partial setup clearly

The project SHALL provide a verification path that fails clearly when the repository was copied but not fully bootstrapped.

#### Scenario: Team verifies a fresh repository before and after bootstrap

- **WHEN** the team runs the template source check before bootstrap
- **THEN** the source integrity check SHALL pass without requiring generated tool assets
- **AND** the post-bootstrap verification SHALL require the generated Kiro and GitHub Copilot assets
