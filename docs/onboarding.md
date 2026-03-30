# Onboarding — The Sixbell-Dev Way

This guide explains how a new Sixbell developer should get ready to work using The Sixbell-Dev Way.

The goal is not only to install tools, but to understand the operating model behind them.

## 1. What you are onboarding into

You are not only installing an IDE setup.

You are onboarding into a standardized way of working where:
- OpenSpec is the source of truth for changes
- Kiro is the main execution environment
- security is mandatory
- human approval matters
- traceability matters
- reuse matters
- AWS-first is the architectural baseline

## 2. What you need

Before starting, ensure you have:
- access to the Sixbell GitHub organization
- access to the central Sixbell baseline repository
- Kiro installed
- Node.js 20.19.0 or higher installed so the baseline can install and update the official OpenSpec CLI
- Python installed (if your projects require it)
- Docker installed (recommended, especially for some MCP servers)
- AWS CLI installed and configured if your role or project needs AWS integration
- `uv` or `uvx` installed if required by AWS MCP servers

Important:
- the installer copies baseline assets into `~/.kiro/`
- the installer installs or updates the official OpenSpec CLI when the Node.js prerequisite is satisfied
- the installer does **not** install Kiro itself
- the installer does **not** install Node.js, Docker, Python, `uv`, or `uvx`
- the installer does **not** create the product repository automatically

## 3. Clone the baseline repository

```bash
git clone <sixbell-org-url>/sixbell-dev-way.git
cd sixbell-dev-way
```

## 4. Install the global baseline

The global baseline should be installed once per developer machine.

This step installs only the global Sixbell baseline for Kiro.

It also provisions the official OpenSpec CLI, but it does not replace project bootstrap, dependency installation, or template customization.

### Windows
Run:

```powershell
.\baseline\global\install\install.ps1 -RepoRoot .
```

### Linux / macOS
Run:

```bash
bash ./baseline/global/install/install.sh .
```

## 5. Verify the global installation

After installation, verify that Kiro can see:
- steering files under the global steering panel
- approved skills
- MCP servers from the installed `mcp.json`
- global governance hooks installed as part of the baseline

Also verify:
- `openspec --version` works in a terminal
- the machine is ready to bootstrap OpenSpec-native project templates

At minimum, the environment should expose:
- Sixbell steering
- Sixbell governance skills
- Context7 MCP
- AWS Docs MCP
- GitHub MCP

## 6. Understand the hybrid model

The Sixbell-Dev Way separates global and project-local assets.

### Global assets
Installed once per user:
- steering
- approved skills
- approved MCP settings
- stack-agnostic governance hooks

### Project assets
Installed per repository through templates:
- local `.kiro/hooks/`
- `.github/` files
- project docs
- scripts used by formatting, linting, testing, and smoke hooks

This prevents one project's stack assumptions from leaking into every other project.

## 7. Create a new repository from a template

Choose the correct template under `baseline/templates/`:
- `fullstack/` — default recommendation and Project 0 reference
- `frontend/`
- `backend/`

When in doubt, start from `fullstack/`.

The new repository should include the required baseline structure:
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

Important:
- the global installer does not copy a template into a new repository for you
- the team must create the new repository from the chosen template
- after copying the template, run `npm run bootstrap:openspec` and then `npm run bootstrap:verify` to generate approved Kiro and GitHub Copilot assets
- then install the project's real dependencies and replace placeholder scripts with the selected toolchain

## 8. Bootstrapping rule for Project 0

Project 0 should use the official fullstack template as its baseline.

That template should become the reference implementation for:
- repository structure
- project-local hooks
- project scripts
- documentation layout
- GitHub governance files

OpenSpec note:
- Project 0 should contain an `openspec/` directory from day zero
- Project 0 should treat `openspec/specs/` as its live behavioral source of truth
- active changes should live under `openspec/changes/`
- the baseline installs the OpenSpec CLI, and the template bootstrap generates the tool-specific OpenSpec assets

## 9. First change workflow in a new project

Before implementing a relevant change:
1. create the OpenSpec change
2. define requirements and acceptance criteria
3. define the technical design
4. classify risk
5. define tasks
6. obtain human approval
7. implement
8. validate tests and documentation
9. request review

## 10. Recommended daily workflow

For day-to-day engineering work:
- use Kiro as the main environment
- use Context7 when touching external technology
- keep code and docs aligned
- use the PR template and review checklist
- treat security and cost awareness as default dimensions, not optional extras

## 11. Troubleshooting

### Kiro does not show steering or skills
- confirm the install script ran successfully
- confirm files exist under `~/.kiro/steering/` and `~/.kiro/skills/`
- restart Kiro if needed

### MCP servers are missing
- confirm `~/.kiro/settings/mcp.json` exists
- confirm the relevant prerequisites exist (`npx`, `uv`/`uvx`, Docker)
- confirm any required credentials are available

### GitHub MCP is unavailable
- confirm Docker is installed and running
- confirm the GitHub token is available for the MCP server

### AWS-related MCP tools fail
- confirm `uv` or `uvx` is installed
- confirm AWS credentials are configured when the server requires them

### Hooks behave incorrectly in a project
- confirm the project template installed the expected local hooks
- confirm the scripts referenced by the hooks actually exist in the project

### OpenSpec commands or assets are missing
- confirm `openspec --version` succeeds
- confirm the project bootstrap generated the expected `.kiro/` and `.github/` OpenSpec assets
- rerun the template OpenSpec bootstrap if tool-facing assets are stale

## 12. Related documents

- `docs/operating-model.md`
- `docs/rollout-plan.md`
- `baseline/global/README.md`
- `baseline/templates/README.md`
- `governance/review-checklist.md`
- `governance/risk-matrix.md`