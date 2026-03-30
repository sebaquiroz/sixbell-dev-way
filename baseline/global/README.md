# Global Baseline — The Sixbell-Dev Way

This directory contains the global assets installed once per developer environment.

Its goal is to provide a consistent AI-assisted development baseline across Sixbell projects without forcing every repository to duplicate the same global configuration.

## What belongs here

### `kiro/`
Global Kiro assets that are intended to be installed under `~/.kiro/`:
- steering
- approved skills
- platform-specific MCP settings

### `hooks/`
The corporate hook catalog.

This catalog includes both:
- global governance hooks that can be installed centrally
- project-oriented hooks that should usually be copied through a template

### `mcp/`
The approved MCP catalog and usage guidance.

### `context7/`
Context7 guidance and usage policy.

### `install/`
Installation scripts for Windows and Linux.

## Installation model

The recommended operating model is hybrid:

- install steering, skills, MCP settings, and global governance hooks once per user
- keep stack-specific hooks inside each project template

This keeps the global baseline reusable while allowing frontend, backend, and fullstack projects to evolve their own local automation safely.

## What does not belong here

The following should usually remain project-local:
- repository-specific `.github/` files
- stack-specific `npm`, Python, or other runtime commands
- product-specific documentation
- project-specific `.kiro/steering/` overrides unless explicitly justified

## Related directories

- `../templates/` — project bootstrap assets
- `../powers/` — optional domain overlays
- `../../docs/onboarding.md` — installation and first-use guide
- `../../docs/operating-model.md` — workflow explanation