# Context7 Guidance — The Sixbell-Dev Way

Context7 is the standard documentation assistant for external technology used in Sixbell projects.

## Corporate recommendation

For Kiro-based workflows, the recommended default is:
- **Context7 via MCP** for day-to-day usage

For multi-tool portability, teams may also use:
- Context7 via CLI
- Context7 via skill or prompt integrations in tools that support it

The corporate rule is not about one exact transport mechanism.

The rule is:
**when a change touches an external library, framework, SDK, migration path, or setup flow, use up-to-date documentation rather than relying on stale memory.**

## Use Context7 when

Use Context7 by default for:
- React / Next.js framework behavior
- Node.js package usage
- Python package usage
- AWS SDK usage
- setup instructions
- migrations
- version-specific API behavior
- integration patterns with third-party libraries

## Do not treat Context7 as autonomous truth

Context7 is an accelerator, not a final authority.

If the result influences:
- security
- architecture
- cost
- cloud design
- migrations

then validate the recommendation against:
- official vendor documentation
- human review
- both, when the impact is significant

## Recommended operating rule

If external technology is involved:
1. check Context7 first
2. confirm the current version and usage pattern
3. apply the recommendation carefully
4. validate critical decisions before finalizing

## Approved baseline setup

In The Sixbell-Dev Way baseline, Context7 is approved as an MCP server and enabled by default in the Kiro MCP settings.

See:
- `../kiro/settings/windows-mcp.json`
- `../kiro/settings/linux-mcp.json`
- `../mcp/approved-mcp.json`

## Practical examples

Use Context7 for questions such as:
- Which Next.js pattern should be used for a new route?
- What changed in the current version of a React library?
- What is the current AWS SDK usage for a specific service?
- How should a dependency migration be handled safely?

Do not use Context7 alone to justify:
- security exceptions
- cloud cost assumptions
- production architecture decisions
- skipping human approval
