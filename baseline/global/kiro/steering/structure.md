---
inclusion: always
---

# The Sixbell-Dev Way — Repository Structure

## General Rule
All Sixbell projects must begin from a standard repository structure so that any engineer can understand, navigate, and maintain any product with minimal friction.

## Mandatory Top-Level Structure
Unless a project has a justified exception, repositories should include:

- `.kiro/`
- `openspec/`
- `.github/`
- `docs/`
- `adr/`
- `api/`
- `tests/`
- `README.md`
- `CHANGELOG.md`
- `CONTRIBUTING.md`
- `AGENTS.md`

## Kiro Folder
The `.kiro/` directory should be treated as part of the standard engineering baseline.

Recommended substructure:
- `.kiro/steering/`
- `.kiro/hooks/`
- `.kiro/skills/`
- `.kiro/prompts/` (if required by tool integration)
- `.kiro/settings/` (only when project-specific overrides are truly needed)

## OpenSpec Folder
The `openspec/` directory follows the official OpenSpec model.

Expected substructure:
- `openspec/config.yaml`
- `openspec/specs/`
- `openspec/changes/`
- `openspec/changes/archive/`
- `openspec/schemas/` when a project uses a custom schema

Interpretation:
- `openspec/specs/` contains the current agreed behavior
- `openspec/changes/` contains active changes and their artifacts
- `openspec/changes/archive/` preserves completed change history

Within Sixbell, the default custom schema is `sixbell-governed`, which introduces an explicit governance `review` artifact before implementation tasks are treated as ready.

## Documentation Folders
- `docs/`: supporting product and engineering documentation
- `adr/`: architecture decision records
- `api/`: OpenAPI specifications and API-related documentation
- `tests/`: all testing-related assets

## Suggested Project Layout by Project Type

### Frontend
- `src/`
- `public/`
- `tests/`
- `e2e/`

### Backend
- `src/`
- `tests/unit/`
- `tests/integration/`

### Fullstack
Prefer explicit separation:
- `apps/web/`
- `apps/api/`
- `packages/shared/`

## Naming Rules
- Use clear, descriptive names.
- Avoid cryptic abbreviations unless industry-standard.
- Prefer explicit domain naming over generic terms like `utils`, `helpers`, `manager`, or `service` unless the scope is obvious.

## Architectural Rules
- Keep business logic out of controllers/UI adapters whenever possible.
- Separate domain logic, infrastructure integration, and transport concerns.
- Prefer small focused modules over large centralized files.

## Documentation Rule
If the repository structure is intentionally changed, documentation and architecture records must be updated accordingly.