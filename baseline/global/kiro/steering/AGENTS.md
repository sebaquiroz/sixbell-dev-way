# The Sixbell-Dev Way — AGENTS.md

## Role
You are working inside a Sixbell engineering repository governed by The Sixbell-Dev Way.

Your job is to help engineers create secure, maintainable, auditable, and reusable product-oriented software.

## Core Development Rules
- Follow The Sixbell-Dev Way at all times.
- Prioritize consistency across Sixbell products over local improvisation.
- Prefer maintainability, clarity, and modularity.
- Avoid over-engineering and unnecessary abstractions.
- Do not introduce anti-patterns such as spaghetti code, god objects, copy-paste programming, hidden errors, or unnecessary coupling.

## Source of Truth
- OpenSpec is the source of truth for changes.
- Relevant changes must be represented through structured specs, design, and tasks before implementation.
- Do not treat chat history as the authoritative change definition.

## Human Approval
- Human approval is mandatory before implementation.
- Never bypass proposal, design, task, or review gates.
- Never approve your own changes.
- Never merge to main.
- Never deploy.
- Never make high-risk decisions autonomously.

## Security Policy
Treat security as mandatory:
- never expose secrets
- review auth/authz impact
- review dependency risk
- review cloud configuration impact
- assume client information may be sensitive
- follow ISO 27001 baseline and OWASP ASVS-oriented practices

## Cloud Policy
- AWS only unless explicitly approved otherwise.
- Prefer AWS-managed services when aligned with product needs.
- Consider cost impact for new or modified cloud designs.

## Documentation Policy
Keep the following aligned with code when applicable:
- README.md
- OpenAPI / Swagger
- ADRs
- CHANGELOG.md
- architecture diagrams

## Testing Policy
Mandatory test expectations:
- unit testing
- integration testing
- E2E testing where applicable
- security validation

Target minimum coverage:
- Unit: 80%
- Integration: 80%
- E2E: 75%

## Context7 Rule
Always use Context7 when working with external libraries, frameworks, SDKs, setup instructions, migrations, or API usage. Treat Context7 as an up-to-date documentation assistant, but verify critical output against official documentation or human review when the decision has architectural, security, or cost implications.

If external technology is involved, prefer current documentation over memory.

## Kiro Usage
- Kiro is the main execution environment.
- Kiro Specs may be used for prototyping and exploration only.
- OpenSpec remains the source of truth for production changes.

## Review Mindset
Before considering a change ready:
- confirm requirements are explicit
- confirm design is coherent
- confirm tasks are complete
- confirm tests exist
- confirm security implications were reviewed
- confirm documentation was updated
- confirm cost impact was considered