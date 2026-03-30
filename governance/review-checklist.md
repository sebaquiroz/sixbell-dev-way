# The Sixbell-Dev Way — Technical Review Checklist

## 1. Scope and Intent
- Is the objective explicit?
- Is the implementation aligned with the intended change?
- Is scope creep present?

## 2. Requirements and Acceptance Criteria
- Are requirements reflected in behavior?
- Are acceptance criteria testable and satisfied?

## 3. Architecture
- Is the solution maintainable?
- Is coupling acceptable?
- Is cohesion acceptable?
- Are anti-patterns present?
- Is the design compatible with Sixbell product reuse?

## 4. Security
- Any secrets introduced?
- Any auth/authz weakness?
- Any sensitive-data concern?
- Any unsafe AWS assumption?
- Any missing validation?

## 5. Testing
- Are tests meaningful?
- Is the expected test level present?
- Are regressions covered?
- Are coverage expectations preserved?

## 6. Documentation
- README aligned?
- API docs aligned?
- ADR updated if needed?
- CHANGELOG aligned?
- Architecture diagram aligned if needed?

## 7. Cost and Operations
- Does the change impact AWS usage or cost?
- Was the cost impact at least acknowledged?
- Does it introduce operational burden?

## 8. Governance
- Was OpenSpec used correctly?
- Was risk level identified?
- Was human approval explicit?
- Is the change ready for PR / merge recommendation?

## Output
Classify findings as:
- Blocking
- Warning
- Suggestion