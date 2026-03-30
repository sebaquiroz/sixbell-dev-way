# Decision Log — The Sixbell-Dev Way

This file records the major baseline decisions behind The Sixbell-Dev Way.

It exists to preserve the “why” behind the standard, not only the final files.

---

## Decision 001 — Use Kiro as the primary execution environment

### Status
Accepted

### Reason
The team needs a structured AI-assisted development environment that supports:
- persistent context
- workflow automation
- hooks
- skills
- powers
- MCP integration

### Consequence
Kiro becomes the primary execution environment for day-to-day development.

### Tradeoff
This increases the importance of Kiro-specific baseline assets, but still allows portability through AGENTS.md and OpenSpec.

---

## Decision 002 — Use OpenSpec as the source of truth for relevant changes

### Status
Accepted

### Reason
The team wants strong traceability, explicit change intent, and versioned rationale.

### Consequence
Relevant changes must be represented through OpenSpec before implementation.

### Tradeoff
This adds process rigor, but improves maintainability and auditability.

---

## Decision 003 — Use Kiro Specs only for exploration/prototyping

### Status
Accepted

### Reason
The team wants to benefit from Kiro Specs without fragmenting the official change source of truth.

### Consequence
Kiro Specs are allowed for exploration and prototypes, but not as the primary source of truth for production changes.

---

## Decision 004 — Require human approval before implementation

### Status
Accepted

### Reason
The team explicitly wants strong control, auditability, and governance.

### Consequence
No relevant implementation should begin without human sign-off.

### Tradeoff
This reduces uncontrolled automation, but adds discipline and review overhead.

---

## Decision 005 — Adopt AWS-first as a non-negotiable policy

### Status
Accepted

### Reason
Sixbell solutions are built on AWS and the team wants consistency in architecture and operations.

### Consequence
Alternative cloud recommendations are out of scope unless explicitly approved.

---

## Decision 006 — Prioritize security by default

### Status
Accepted

### Reason
The team works in B2B contexts with potentially sensitive client data and must align with ISO 27001 and strong secure engineering practices.

### Consequence
Security is a mandatory dimension in review, documentation, and workflow gates.

---

## Decision 007 — Use risk-based rigor

### Status
Accepted

### Reason
Not every change requires the same review depth, but some changes clearly require stronger discipline.

### Consequence
Changes are classified as low, medium, or high risk and reviewed accordingly.

---

## Decision 008 — Version the standard formally

### Status
Accepted

### Reason
The Sixbell-Dev Way must evolve as a real engineering asset, not as undocumented tribal knowledge.

### Consequence
Changes to the standard must be recorded and versioned.

---

## Decision 009 — Distribute the baseline from a central GitHub repository

### Status
Accepted

### Reason
The team wants consistent installation and a shared source for baseline assets.

### Consequence
The baseline is stored centrally and distributed from the Sixbell GitHub organization.

---

## Decision 010 — Prefer approved catalogs over open-ended tool sprawl

### Status
Accepted

### Reason
The team wants to avoid uncontrolled divergence and excessive context/tool overload.

### Consequence
Hooks, skills, MCP servers, and powers should be approved and curated rather than left completely open.

---

## Decision 011 — Use a hybrid hook strategy

### Status
Accepted

### Reason
Sixbell supports multiple project shapes and technology stacks.

Always-on global hooks are valuable for governance, but stack-specific hooks should stay local to the project template so that commands and file patterns remain accurate.

### Consequence
Global baseline installation includes governance-oriented hooks, while formatting, linting, testing, smoke, and other stack-specific hooks belong in project templates.

---

## Decision 012 — Use the fullstack template as the Project 0 reference

### Status
Accepted

### Reason
The initial target product shape for baseline validation is a fullstack web product on AWS.

Using the fullstack template as the reference reduces ambiguity and gives the team one canonical project bootstrap path.

### Consequence
The fullstack template becomes the default starting point when a narrower template is not clearly justified.

---

## Decision 013 — Treat powers as optional domain overlays

### Status
Accepted

### Reason
Some workflows require extra domain-specific guidance, but that guidance should not always be loaded into every project.

### Consequence
Powers remain approved optional overlays that teams activate when the domain or delivery workflow justifies them.