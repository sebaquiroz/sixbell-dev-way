# Changelog

All notable changes to The Sixbell-Dev Way will be documented in this file.

The format is inspired by Keep a Changelog, adapted to Sixbell's engineering baseline needs.

---

## [Unreleased]

### Added
- Operating model document completed
- Global baseline overview README
- Context7 usage guide
- Hooks catalog guide
- MCP catalog guide
- Powers catalog guide
- Templates catalog guide
- Fullstack project template skeleton with local hooks, `.github/`, docs, OpenSpec, API, and tests placeholders
- Frontend project template skeleton
- Backend project template skeleton
- Initial `sixbell-voicebot-aws` power and steering guidance
- Root repository `openspec/` tree with official structure, live specs, and the `sixbell-governed` schema
- OpenSpec-native bootstrap flow for fullstack, frontend, and backend templates

### Changed
- Global install scripts now install governance-oriented global hooks
- Hook catalog now follows a documented hybrid model (global governance hooks + project-local stack hooks)
- Global hook files no longer depend on a hardcoded repository name
- Windows MCP config now uses the same `uvx` strategy as Linux for `aws-docs`
- README, onboarding, operating model, and installer notes now adopt official OpenSpec semantics and clarify the baseline/bootstrap contract
- Global installers now validate Node.js and install/update the official OpenSpec CLI
- Template bootstraps now generate official Kiro and GitHub Copilot OpenSpec assets per project instead of treating OpenSpec as a placeholder directory only
- Global governance prompts and steering now reference `openspec/specs/`, active changes, and the required `review.md` gate

## [0.1.0] - 2026-03-27

### Added
- Initial baseline definition for The Sixbell-Dev Way
- Core steering files for Kiro
- AGENTS.md baseline
- OpenSpec governance policy
- Security policy
- Repository structure policy
- Initial hook catalog
- Initial internal skill catalog
- Initial MCP baseline for Windows and Linux
- Initial approved MCP catalog
- Initial Sixbell delivery governance power
- Frontend, backend, and fullstack templates
- Pull request template
- Technical review checklist
- Risk matrix
- Installation scripts
- Onboarding guide
- Rollout plan
- Decision log

### Notes
- This is the first operational draft of The Sixbell-Dev Way.
- The purpose of this version is to enable internal piloting, team socialization, and early feedback gathering.
- This version is expected to evolve after the first demos and initial real-world usage.

---

## Versioning guidance

### PATCH
Use for:
- wording clarifications
- typo fixes
- non-breaking documentation improvements
- small quality-of-life baseline improvements

### MINOR
Use for:
- meaningful additions
- new approved hooks/skills/powers
- template improvements
- governance improvements that do not invalidate previous baseline assumptions

### MAJOR
Use for:
- breaking governance changes
- major methodology shifts
- baseline structure changes that require migration in active projects