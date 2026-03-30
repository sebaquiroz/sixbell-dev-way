# AGENTS.md — Fullstack Template

This repository follows The Sixbell-Dev Way.

## Local template rules

- Keep frontend code under `apps/web/`.
- Keep backend or API code under `apps/api/`.
- Keep reusable contracts or shared code under `packages/shared/`.
- Treat `openspec/specs/` as the current source of truth for relevant behavior.
- Create active changes under `openspec/changes/`.
- Use the `sixbell-governed` schema unless an approved exception exists.
- Run the project OpenSpec bootstrap so official Kiro and GitHub Copilot assets are generated locally.
- Use project-local hooks for formatting, linting, unit validation, smoke validation, and documentation sync.

## Implementation discipline

- Do not bypass human approval.
- Do not bypass the OpenSpec review artifact.
- Do not bypass documentation updates when behavior or architecture changes.
- Prefer changes that preserve reuse potential across Sixbell products.
- Keep the repository compatible with AWS-first architecture.

## Before PR recommendation

Confirm that:
- OpenSpec artifacts exist in the expected official structure
- the review artifact was completed when required
- tests were run at the appropriate level
- docs are aligned
- security and architecture concerns were reviewed when required
