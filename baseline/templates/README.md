# Project Templates — The Sixbell-Dev Way

This directory contains the official repository templates used to start new Sixbell projects.

## Purpose

Templates exist to turn the corporate baseline into a project that is immediately understandable, governable, and ready for implementation.

Each template should provide:
- the required repository structure
- local `.kiro/` assets, including workspace hooks for governance and template-compatible automation
- `.github/` governance assets
- an OpenSpec-native `openspec/` tree with project config, live specs, active changes, and any approved custom schema
- documentation skeletons
- scripts expected by project hooks and project bootstrap

## Official templates

### `fullstack/`
Reference template for Project 0.

Use when the product includes:
- a web frontend
- an application API or backend
- shared contracts or shared packages

### `frontend/`
Use when the product is primarily UI/web-facing and backend responsibilities are external or out of scope.

### `backend/`
Use when the product is API- or service-first and does not require a built-in web frontend.

## Selection rule

If there is doubt, start from `fullstack/` and simplify rather than starting from an undersized template.

## What templates must align with

Every template must remain aligned with:
- `../global/kiro/steering/structure.md`
- `../global/kiro/steering/tech.md`
- `../global/kiro/steering/AGENTS.md`
- `../../governance/pr-template.md`
- `../../governance/review-checklist.md`
- `../../governance/risk-matrix.md`

## Bootstrap expectation

A template is considered usable only if:
- the structure is complete
- the documented workflow is coherent
- the workspace includes the governance hooks required by The Sixbell-Dev Way
- local hooks point to real scripts
- `.github/` and documentation assets are present
- the template source passes its own bootstrap integrity check
- a copied repository can generate approved OpenSpec assets for Kiro and GitHub Copilot during bootstrap
- the repository exposes a clear bootstrap path such as `npm run bootstrap:openspec` followed by `npm run bootstrap:verify`
- the result is a safe starting point for a real product repository