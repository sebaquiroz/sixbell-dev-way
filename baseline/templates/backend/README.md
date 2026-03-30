# Backend Template — The Sixbell-Dev Way

Use this template for API-first or service-first repositories.

## Included
- required governance files
- local `.kiro/hooks/`
- `.github/pull_request_template.md`
- an OpenSpec-native repository tree with the Sixbell custom schema
- docs, ADR, API, and tests placeholders
- executable `npm` scripts expected by the hooks

## Getting started

1. Copy this template into a new repository.
2. Install the global baseline from the Sixbell baseline repository.
3. Run `npm run bootstrap:openspec`.
4. Run `npm run bootstrap:verify`.
5. Replace the placeholder scripts with the real tooling used by the project.
6. Create the first OpenSpec change under `openspec/changes/` before relevant implementation.

## Note

This template is intentionally backend-generic.

If the project becomes Python-first, replace the local hooks and scripts with the appropriate Python tooling while preserving the same governance model.

Generated OpenSpec skills and prompts are intentionally created during project bootstrap, not pre-committed in the source template.
