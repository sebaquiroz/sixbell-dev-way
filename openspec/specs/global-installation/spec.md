# Capability: global-installation

## Purpose

Define what the global Sixbell installer is responsible for on a developer machine and what it intentionally leaves to project bootstrap.

## Requirements

### Requirement: The global installer provisions user-scope baseline assets and the OpenSpec CLI

The global installer SHALL install the approved user-scope Sixbell baseline assets needed by Kiro at global scope and SHALL install or update the official OpenSpec CLI when prerequisites are satisfied.

#### Scenario: Developer installs the baseline on a prepared machine

- **WHEN** the machine has the required Node.js version and the installer runs successfully
- **THEN** steering, skills, and MCP configuration SHALL be copied into place
- **AND** the OpenSpec CLI SHALL be available for project bootstrap and change workflows

### Requirement: The global installer does not rely on unsupported global hook loading

The global installer SHALL NOT rely on Kiro loading runtime hooks from `~/.kiro/`; workspace hooks SHALL instead be delivered by official project templates.

#### Scenario: Developer finishes the global install before creating a project

- **WHEN** the developer completes the global install on a prepared machine
- **THEN** the machine SHALL be ready with steering, skills, MCP configuration, and the OpenSpec CLI
- **AND** runtime hooks SHALL still be expected from the chosen project template rather than from the user profile

### Requirement: The global installer preserves project boundaries

The global installer SHALL NOT create a product repository, install project dependencies, or choose the project's final application toolchain.

#### Scenario: Developer expects full project bootstrap from the global installer

- **WHEN** the developer runs only the global installer
- **THEN** the machine SHALL be prepared for Sixbell development
- **AND** the product repository bootstrap SHALL remain a separate step

### Requirement: The global installer explains outcome and prerequisites clearly

The global installer SHALL communicate what it installed, what it skipped, and which prerequisites are still required for downstream bootstrap or MCP usage.

#### Scenario: Prerequisite is missing

- **WHEN** a prerequisite for OpenSpec or an approved MCP surface is missing
- **THEN** the installer SHALL report the missing prerequisite explicitly
- **AND** the next action SHALL be understandable without reading the source code
