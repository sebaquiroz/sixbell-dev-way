# OpenSpec

This project uses official OpenSpec with the Sixbell custom schema `sixbell-governed`.

Directory semantics:
- `openspec/specs/` — current agreed behavior
- `openspec/changes/` — active or proposed changes
- `openspec/changes/archive/` — completed change history
- `openspec/config.yaml` — project-level OpenSpec configuration
- `openspec/schemas/sixbell-governed/` — Sixbell governance overlay for the official workflow

After copying this template into a new repository, run `npm run bootstrap:openspec` to generate the official Kiro and GitHub Copilot OpenSpec assets.
