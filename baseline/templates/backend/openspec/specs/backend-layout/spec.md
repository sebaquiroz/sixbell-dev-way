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

### Requirement: Local hooks point to repository-owned scripts

The repository SHALL provide local scripts for formatting, linting, unit validation, and smoke validation so project hooks do not point to missing commands.

#### Scenario: A project-local hook executes

- **WHEN** a configured local hook runs from `.kiro/hooks/`
- **THEN** the referenced command SHALL exist in the repository
- **AND** the hook SHALL not depend on undeclared per-developer shell aliases
