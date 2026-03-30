# Voicebot AWS Workflow Governance

## Purpose

Use this workflow when the project involves conversational systems, telephony, WebRTC, or AWS-based orchestration for voice or chat products.

## Mandatory flow additions

In addition to the normal Sixbell workflow, make the following explicit:
1. channel and session flow
2. trust boundaries
3. transcript or audio sensitivity assumptions
4. fallback behavior
5. AWS service selection rationale
6. latency and reliability assumptions
7. cost-sensitive components

## Additional review areas

Before recommending implementation or merge, review:
- authentication and authorization boundaries
- public internet exposure
- handling of transcripts, recordings, or session metadata
- failure handling for telephony or real-time communication steps
- operational observability and alerting assumptions
- AWS cost impact for scale-sensitive components

## Blockers

Treat the following as blocking:
- unclear trust boundaries
- unclear handling of sensitive conversational data
- missing fallback behavior for critical failures
- missing architecture description for telephony or orchestration flow
- missing explicit cost-awareness for scale-sensitive AWS services

## Documentation rule

For voicebot or chatbot changes, keep these artifacts aligned when applicable:
- README
- architecture diagram
- ADRs
- OpenAPI or integration notes
- runbooks or operational notes

## Final rule

If a voice or conversational workflow is materially affected and the design is still ambiguous, escalate for human review rather than guessing.
