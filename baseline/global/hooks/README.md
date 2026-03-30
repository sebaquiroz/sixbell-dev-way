# Hook Catalog — The Sixbell-Dev Way

This directory contains the official Kiro hook catalog for The Sixbell-Dev Way.

## Hook strategy

The baseline uses a **hybrid hook model**.

### Global hooks
These hooks are appropriate for user-level installation because they are stack-agnostic and governance-oriented.

Recommended global hooks:
- `spec-gate-before-apply.kiro.hook`
- `architecture-review-manual.kiro.hook`
- `security-pre-commit-review.kiro.hook`

### Project hooks
These hooks are typically better inside project templates because they depend on local scripts, stack choices, or repository structure.

Recommended project-local hooks:
- `format-lint-on-save.kiro.hook`
- `unit-test-on-save.kiro.hook`
- `smoke-on-demand.kiro.hook`
- `api-doc-sync.kiro.hook`

## Hook matrix

| Hook | Trigger | Primary purpose | Recommended scope |
| --- | --- | --- | --- |
| `spec-gate-before-apply` | `preTaskExecution` | Blocks progress when mandatory governance artifacts are missing | Global |
| `architecture-review-manual` | `userTriggered` | Manual architecture review of the current change | Global |
| `security-pre-commit-review` | `userTriggered` | Manual security review of the current change | Global |
| `format-lint-on-save` | `fileEdited` | Runs local formatting and linting commands | Project |
| `unit-test-on-save` | `fileEdited` | Runs local unit tests | Project |
| `smoke-on-demand` | `userTriggered` | Runs local smoke validation | Project |
| `api-doc-sync` | `fileEdited` | Reviews whether docs should be synchronized after code changes | Project |

## Why the hook model is hybrid

Sixbell supports multiple stacks and not all repositories should inherit the same runtime commands.

For example:
- a Node project may use `npm run validate:lint`
- a Python project may use `pytest`, `ruff`, or another command set

If all hooks are forced globally, the baseline becomes noisy or wrong.

## Authoring rules

When adding or changing hooks:
- prefer stack-agnostic governance hooks for the global baseline
- keep build, test, lint, and smoke hooks inside the relevant project template
- avoid hard-coding repository names unless a hook is intentionally repo-specific
- ensure the commands referenced by project hooks exist in the template that installs them

## Related files

- `../install/install.ps1`
- `../install/install.sh`
- `../../templates/README.md`
- `../../../docs/operating-model.md`
