# Capability: governance

## Purpose

Define how Sixbell repositories govern relevant changes, approval gates, and precedence between upstream workflow defaults and local Sixbell rules.

## Requirements

### Requirement: Relevant changes use OpenSpec artifacts before implementation

The repository SHALL represent relevant changes to governance, templates, installers, hooks, workflow assets, or documentation contracts through official OpenSpec change artifacts before implementation begins.

#### Scenario: Baseline change starts

- **WHEN** a contributor proposes a relevant behavioral or workflow change
- **THEN** an active change directory SHALL exist under `openspec/changes/`
- **AND** the change SHALL describe the affected capabilities and intended impact

### Requirement: Human approval remains a blocking gate

The repository SHALL require explicit human approval before relevant implementation begins, even when tooling can automate parts of the OpenSpec workflow.

#### Scenario: Change artifacts exist but approval does not

- **WHEN** proposal, specs, design, or tasks exist without explicit human approval
- **THEN** the change SHALL be treated as not ready for implementation

### Requirement: Sixbell governance defines local precedence

The repository SHALL treat Sixbell governance rules as locally authoritative whenever they refine or tighten generic upstream workflow defaults.

#### Scenario: Upstream default is less strict than Sixbell policy

- **WHEN** an upstream OpenSpec workflow default is more permissive than Sixbell governance
- **THEN** the repository SHALL follow the stricter Sixbell rule for approval, security, risk, or documentation alignment
