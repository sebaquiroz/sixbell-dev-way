# Capability: backend-layout

## Purpose

Define the default repository structure and separation of concerns for a Sixbell backend project.

## Requirements

### Requirement: Service code and API contracts stay explicitly separated

The repository SHALL keep backend or service code under `src/` and API contracts or interface definitions under `api/`.

#### Scenario: Team adds new backend code or contracts

- **WHEN** engineers add new application code or API contracts to the repository
- **THEN** executable backend logic SHALL be placed under `src/`
- **AND** interface or contract artifacts SHALL be placed under `api/`

### Requirement: Supporting governance assets remain present at the repository root

The repository SHALL keep `docs/`, `adr/`, `api/`, `tests/`, `.github/`, `.kiro/`, and `openspec/` as first-class parts of the project structure.

#### Scenario: Repository is reviewed for baseline compliance

- **WHEN** the repository is checked against the Sixbell baseline
- **THEN** the supporting governance and documentation directories SHALL be present
- **AND** their purpose SHALL remain understandable to any Sixbell engineer

### Requirement: Workspace hooks stay repository-owned and template-compatible

The repository SHALL carry its runtime Kiro hooks under `.kiro/hooks/`, including the governance hooks required by The Sixbell-Dev Way and the backend automation hooks that match the template's scripts.

#### Scenario: A project-local hook executes

- **WHEN** a configured local hook runs from `.kiro/hooks/`
- **THEN** the required governance hooks SHALL be present without depending on user-level hook installation
- **AND** any referenced command SHALL exist in the repository
- **AND** the hook SHALL not depend on undeclared per-developer shell aliases
