---
inclusion: always
---

# The Sixbell-Dev Way — Security Policies

## Security First
Security is a default requirement in every Sixbell project.

No implementation is considered complete if it violates baseline security expectations.

## Mandatory Reference Standards
- ISO 27001 is mandatory.
- OWASP ASVS is the preferred application security reference.
- AWS hardening and secure cloud configuration practices must be followed.

## Baseline Security Rules
Always enforce the following:
- never hardcode secrets, API keys, tokens, passwords, or certificates
- always review authentication and authorization implications
- review handling of sensitive client data
- review dependency risk and outdated packages
- review cloud configuration choices for security impact
- favor least privilege and secure defaults
- favor explicit validation over trust-based assumptions

## Sensitive Data Rule
Sixbell works in B2B contexts and the sensitivity of data may vary depending on the customer.

Because of this:
- treat all client-related information as potentially sensitive unless explicitly classified otherwise
- avoid exposing internal URLs, credentials, customer identifiers, or system details
- never assume test/demo data is safe to expose without validation

## Secure Coding Requirements
Generated or reviewed code should:
- validate inputs explicitly
- avoid hidden or swallowed errors
- prefer explicit failure handling
- avoid insecure defaults
- avoid leaking implementation details in logs or error messages

## AWS Security Rule
All AWS-related code and architecture decisions must be reviewed for:
- secure configuration
- principle of least privilege
- impact on customer data
- authentication and authorization boundaries
- exposure to public internet
- operational blast radius

## Approval Rule
Human approval is mandatory before implementing any change.

Additional security attention is required for:
- high-risk changes
- architecture changes
- migrations
- changes touching sensitive client data

## Blocking vs Warning
Security rules follow a mixed policy:
- blocking for critical violations
- warning for lower-severity findings that do not justify stopping the workflow immediately

## Never Automate Without Human Supervision
The following must never happen without human supervision:
- merge to main
- PR approval
- production deployment
- execution of high-risk changes