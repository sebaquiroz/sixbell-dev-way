---
inclusion: always
---

# The Sixbell-Dev Way — Technology Stack

## Cloud Policy
Sixbell is an AWS-first organization.

### Mandatory rule
- All production-oriented architectures must run on AWS.
- Recommending or designing solutions for other cloud providers is not allowed unless explicitly requested and approved by the team.

## Preferred Cloud Services
Common AWS services used by Sixbell products include:
- AWS Amplify
- Amazon S3
- AWS Lambda
- Amazon API Gateway
- Amazon Aurora
- Amazon Bedrock (when AI agent capabilities are needed)
- CloudWatch and related AWS observability capabilities

## Preferred Frontend Stack
- React is the baseline frontend library.
- Next.js is a preferred framework when SSR, routing, API integration, or productized frontend structure adds value.
- Propose alternatives only if they are clearly justified and improve maintainability, security, or product consistency.

## Preferred Backend Stack
- Node.js
- Python

Backend services should be designed as clean, maintainable, testable APIs and service layers.

## API Style
- REST is the default API style unless another style is explicitly approved.
- APIs should be documented using OpenAPI/Swagger whenever applicable.
- Consistency in endpoint naming, error handling, versioning, and authentication is mandatory.

## Database Policy
- SQL-first mindset.
- Prefer AWS-managed database offerings when they fit product requirements.
- Aurora is the preferred reference for relational workloads.

## Testing Policy
Preferred testing strategy:
- unit testing mandatory
- integration testing mandatory
- E2E testing mandatory where applicable
- security validation mandatory

Coverage goals:
- Unit: 80%
- Integration: 80%
- E2E: 75%

## Documentation Policy
The following artifacts are expected to remain aligned with code when applicable:
- README.md
- OpenAPI / Swagger
- ADRs
- CHANGELOG.md
- architecture diagram

## Architecture Expectations
All generated solutions should favor:
- low coupling
- high cohesion
- explicit error handling
- testability
- maintainability
- modularity
- readability over cleverness

## Anti-Patterns to Avoid
The following are explicitly discouraged:
- spaghetti code
- unnecessary coupling
- unnecessary complexity
- error hiding
- copy-paste programming
- god objects