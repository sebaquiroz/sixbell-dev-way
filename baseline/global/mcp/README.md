# Approved MCP Catalog — The Sixbell-Dev Way

This directory documents the MCP servers approved for Sixbell engineering workspaces.

## Purpose

MCP is adopted to provide controlled access to live external context without turning every workspace into an uncontrolled tool jungle.

The rule is simple:
- use approved servers only
- load only what is useful for the current task
- validate high-impact outputs before treating them as final

## Approved servers

The current approved catalog is defined in `approved-mcp.json`.

Default-enabled servers:
- `context7` — current documentation for libraries, frameworks, SDKs, and APIs
- `aws-docs` — official AWS documentation lookup
- `github` — repository, issue, and pull request context and operations

Conditionally approved servers:
- `aws-pricing` — enabled only when cost analysis is necessary

## Activation philosophy

Prefer:
- enabling the minimal set of servers needed for the current task
- using powers or workflow context to activate specialized tools only when useful

Avoid:
- always-on tool sprawl
- adding write-capable tools without review
- treating MCP output as unquestionable truth

## Validation rule

If MCP output affects:
- architecture
- security
- cost
- compliance
- migration strategy

then it must be validated by:
- official documentation
- human review
- both, when the impact is material

## Prerequisites

Depending on the server, the baseline may require:
- `npx`
- `uv` or `uvx`
- Docker
- a GitHub token for GitHub MCP
- AWS credentials/profile for AWS-related tooling when applicable

## Governance rule

Any new MCP server requires team approval before it becomes part of the baseline.

See also:
- `approved-mcp.json`
- `../kiro/settings/windows-mcp.json`
- `../kiro/settings/linux-mcp.json`
- `../../../governance/decision-log.md`
