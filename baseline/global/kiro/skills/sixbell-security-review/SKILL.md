---
name: sixbell-security-review
description: Perform a Sixbell security-focused review using ISO 27001 baseline, OWASP ASVS-inspired controls, and AWS-first secure engineering expectations. Use when reviewing code, architecture, infrastructure assumptions, or sensitive-client flows.
---

# Sixbell Security Review

Use this skill when a change needs security validation.

## Mandatory security posture
Security is not optional in Sixbell projects.

## Review checklist

### Secrets and credentials
Check for:
- hardcoded API keys
- tokens
- passwords
- certificates
- private keys
- connection strings
- internal-only URLs or identifiers

### Authentication and authorization
Check for:
- missing authorization checks
- assumptions of trust without validation
- weak session or token handling
- ambiguous role boundaries

### Data sensitivity
Assume client data may be sensitive unless explicitly classified otherwise.

Check for:
- excessive data exposure
- weak validation
- unsafe logging
- accidental disclosure of client-specific information

### Error handling
Check for:
- silent failures
- swallowed exceptions
- overly revealing error messages
- hidden security failures

### Cloud and AWS
Review:
- exposure to public internet
- blast radius
- privilege assumptions
- insecure defaults
- missing secure-by-default configuration logic

## Output format
For each finding:
- title
- severity
- why it matters
- blocking or warning
- proposed remediation

At the end:
- overall security assessment
- items requiring human security sign-off