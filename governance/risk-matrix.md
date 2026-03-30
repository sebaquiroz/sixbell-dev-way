# The Sixbell-Dev Way — Risk Matrix

## Low Risk
### Definition
A change that is isolated and does not interfere materially with the rest of the platform.

### Required rigor
- OpenSpec change exists
- objective, requirements, design, and tasks exist
- human approval required
- standard tests required
- standard review required

### Typical examples
- isolated refactor
- local UI fix
- low-impact service cleanup

---

## Medium Risk
### Definition
A change that impacts related areas and may require checking neighboring components, but is not expected to compromise the overall solution behavior.

### Required rigor
- everything from low risk
- architecture review required
- security review required
- documentation review required
- broader integration validation required

### Typical examples
- cross-module refactor
- API contract change with moderate impact
- auth-related adjustment with limited blast radius

---

## High Risk
### Definition
A change that impacts multiple sections of the solution and may create incompatibility or platform malfunction.

### Required rigor
- everything from medium risk
- explicit high-risk classification
- stronger human review discipline
- architecture sign-off required
- security sign-off required
- cost/operational impact review required
- full review before merge recommendation

### Typical examples
- large architectural change
- migration
- change affecting sensitive client data
- transversal behavior change