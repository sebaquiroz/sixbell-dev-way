# Fullstack Template — The Sixbell-Dev Way

This is the reference project template for new Sixbell fullstack products.

Use it when the repository will contain:
- a web frontend
- an API or application backend
- shared contracts or shared code

## Purpose

This template turns The Sixbell-Dev Way into a project-ready repository skeleton.

It includes:
- the required top-level structure
- local `.kiro/hooks/` for stack-specific automation
- `.github/` review assets
- an OpenSpec-native repository tree with the Sixbell custom schema
- docs, ADR, API, and tests placeholders
- executable `npm` scripts expected by the local hooks

## Structure

- `apps/web/` — frontend application
- `apps/api/` — backend or API application
- `packages/shared/` — shared types, contracts, or utilities
- `.kiro/hooks/` — project-local automation hooks
- `.github/` — PR governance assets
- `openspec/` — structured change source of truth
- `docs/`, `adr/`, `api/`, `tests/` — supporting assets

## Getting started

1. Copy this template into a new repository.
2. Install the global baseline from the Sixbell baseline repository.
3. Run `npm run bootstrap:openspec`.
4. Run `npm run bootstrap:verify`.
5. Replace the placeholder scripts with the real tooling used by the project.
6. Create the first OpenSpec change under `openspec/changes/` before relevant implementation.

## Important note

The scripts in this template are intentionally lightweight and safe.

They exist so the baseline hooks do not point to missing commands on day zero.

Before real feature work advances, replace or evolve them with the project's actual tooling.

The template source intentionally does **not** pre-commit generated OpenSpec skills and prompts for Kiro or GitHub Copilot.

Those are generated per project during `npm run bootstrap:openspec`, so downstream repositories receive fresh official assets without turning this template into a frozen vendor snapshot.

For baseline maintenance inside this repository:
- `npm run bootstrap:check` validates the source template contents
- `npm run bootstrap:verify` validates a copied repository after OpenSpec bootstrap ran
