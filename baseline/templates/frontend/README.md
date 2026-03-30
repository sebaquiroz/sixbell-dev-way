# Frontend Template — The Sixbell-Dev Way

Use this template for web-first repositories where the frontend is the main product surface.

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

This template intentionally keeps generated OpenSpec skills and prompts out of source control at the template-source level.

They are generated per project during `npm run bootstrap:openspec` so each new repository gets fresh official assets for Kiro and GitHub Copilot.
