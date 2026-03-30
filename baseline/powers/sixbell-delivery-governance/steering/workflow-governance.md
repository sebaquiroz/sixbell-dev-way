# Workflow Governance

## Mandatory flow
For relevant changes, follow this sequence:
1. OpenSpec proposal
2. requirements and acceptance criteria
3. technical design
4. risk classification
5. task breakdown
6. human approval
7. implementation
8. review
9. archive / sync

## Blockers
Treat the following as blocking:
- missing human approval
- missing change design
- missing risk classification
- unresolved critical security issue
- unresolved architecture issue for medium/high-risk changes

## Documentation rule
A change is not complete if code changed but required documentation did not.

## Review rule
Before any PR recommendation:
- verify tests
- verify docs
- verify security
- verify architecture alignment
- verify cost impact awareness

## Final rule
If uncertainty exists, do not guess. Ask for clarification or recommend a human decision.