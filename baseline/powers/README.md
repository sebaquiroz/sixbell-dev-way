# Powers Catalog — The Sixbell-Dev Way

Powers are optional workflow overlays that package additional context, steering, and operating rules for a specific domain.

They are not the same as global steering and they are not the same as always-on skills.

## When to use a power

Use a power when the task needs:
- domain-specific workflow guidance
- extra context that should not always be loaded
- a stricter or more specialized delivery path

## Approved powers in this baseline

### `sixbell-delivery-governance`
Use when:
- preparing a pull request
- checking implementation readiness
- validating whether a change can move forward safely
- reviewing delivery discipline against The Sixbell-Dev Way

### `sixbell-voicebot-aws`
Use when:
- working on AI voicebot or chatbot products
- designing AWS-based conversational systems
- evaluating SIP, WebRTC, telephony, or voice orchestration workflows

## Powers vs skills

### Skills
Use skills for focused task guidance such as:
- PR review
- security review
- OpenSpec governance

### Powers
Use powers for broader workflow modes that combine guidance across multiple decisions or delivery stages.

## Installation model

Powers are not treated as mandatory always-on baseline assets.

They should be imported or activated when the project or task justifies them.

## Governance rule

New powers should:
- solve a recurring Sixbell need
- avoid duplicating always-on steering
- be approved through the team governance model
- remain understandable by the full team

## Related directories

- `sixbell-delivery-governance/`
- `sixbell-voicebot-aws/`
- `../global/README.md`
- `../../docs/operating-model.md`
