# Hook Catalog — The Sixbell-Dev Way

This directory contains the official Kiro hook catalog for The Sixbell-Dev Way.

## Hook strategy

The baseline uses a **central catalog + workspace execution model**.

Kiro currently supports hooks only per workspace.

That means this directory is the approved catalog of hooks, but the runtime hook files that Kiro executes should live under each repository's `.kiro/hooks/`.

### Governance hooks for all official templates
These hooks are stack-agnostic and should be copied into every official Sixbell template so they are available in each workspace.

Recommended governance hooks:
- `spec-gate-before-apply.kiro.hook`
- `architecture-review-manual.kiro.hook`
- `security-pre-commit-review.kiro.hook`

### Template-compatible automation hooks
These hooks are still project-local because they depend on local scripts, stack choices, or repository structure.

Recommended project-local hooks:
- `format-lint-on-save.kiro.hook`
- `unit-test-on-save.kiro.hook`
- `smoke-on-demand.kiro.hook`
- `api-doc-sync.kiro.hook`

## Hook matrix

| Hook | Trigger | Primary purpose | Recommended scope |
| --- | --- | --- | --- |
| `spec-gate-before-apply` | `preTaskExecution` | Blocks progress when mandatory OpenSpec and governance artifacts are missing | Workspace (all official templates) |
| `architecture-review-manual` | `userTriggered` | Manual architecture review of the current change | Workspace (all official templates) |
| `security-pre-commit-review` | `userTriggered` | Manual security review of the current change | Workspace (all official templates) |
| `format-lint-on-save` | `fileEdited` | Runs local formatting and linting commands | Workspace (matching template) |
| `unit-test-on-save` | `fileEdited` | Runs local unit tests | Workspace (matching template) |
| `smoke-on-demand` | `userTriggered` | Runs local smoke validation | Workspace (matching template) |
| `api-doc-sync` | `fileEdited` | Reviews whether docs should be synchronized after code changes | Workspace (matching template) |

## Why the execution model is workspace-local

Kiro does not currently load hooks from `~/.kiro/`, so installing runtime hooks globally would create a false expectation.

The catalog still belongs here because Sixbell wants one approved place to author, review, and evolve hooks.

Official templates then carry the relevant hook files into `.kiro/hooks/` for the workspace that Kiro actually runs.

## Why templates still split governance vs stack hooks

Sixbell supports multiple stacks and not all repositories should inherit the same runtime commands.

For example:
- a Node project may use `npm run validate:lint`
- a Python project may use `pytest`, `ruff`, or another command set

If all hooks are forced globally, the baseline becomes noisy or wrong.

## Authoring rules

When adding or changing hooks:
- treat this directory as the centrally curated source for approved hooks
- copy governance hooks into every official template because Kiro executes them at workspace scope
- keep build, test, lint, and smoke hooks inside the relevant project template
- avoid hard-coding repository names unless a hook is intentionally repo-specific
- ensure the commands referenced by project hooks exist in the template that installs them
- when validating OpenSpec readiness, use the official structure (`openspec/specs/`, `openspec/changes/`, `review.md`, etc.) rather than a simplified placeholder model

## Related files

- `../install/install.ps1`
- `../install/install.sh`
- `../../templates/README.md`
- `../../../docs/operating-model.md`
