---
name: "sixbell-voicebot-aws"
displayName: "Sixbell Voicebot AWS"
description: "Apply The Sixbell-Dev Way to AWS-based voicebot and chatbot workflows, including telephony, SIP, WebRTC, orchestration, security, and cost-aware design."
keywords: [
  "voicebot",
  "chatbot",
  "aws",
  "bedrock",
  "sip",
  "webrtc",
  "telephony",
  "voice",
  "conversation",
  "contact center",
  "orchestration"
]
---

# Sixbell Voicebot AWS Power

This power activates additional delivery discipline for Sixbell conversational products built on AWS.

Use it when:
- designing or evolving a voicebot or chatbot product
- working with SIP trunks, telephony, or WebRTC flows
- evaluating AWS-based conversational orchestration
- reviewing architecture, security, and operational impact of real-time communication flows

## Onboarding

### Step 1: Confirm baseline discipline
Ensure the repository already follows The Sixbell-Dev Way baseline.

### Step 2: Confirm system boundaries
Before implementation, make explicit:
- user channels
- telephony or browser entry points
- orchestration flow
- AI/LLM boundaries
- external integrations
- data sensitivity assumptions

### Step 3: Confirm AWS architecture intent
Make explicit:
- which AWS services are used
- why they are used
- traffic or concurrency assumptions
- cost-sensitive components
- security boundaries and internet exposure

### Step 4: Confirm domain-specific risks
Review:
- real-time communication fragility
- session lifecycle handling
- fallbacks and failure modes
- customer data exposure
- logging and transcript sensitivity
- operational blast radius

## Behavioral rules

- Never recommend a conversational architecture without explicit security and cost review.
- Never assume demo data is safe by default.
- Never ignore latency, reliability, or fallback behavior in telephony-related flows.
- Prefer explicit architecture diagrams and ADRs for communication-heavy workflows.
- Keep AWS-first guidance and Sixbell governance as the governing baseline.

## Expected output
When activated, produce:
1. current architecture and risk summary
2. missing design or governance artifacts
3. domain-specific blockers
4. warnings and cost hotspots
5. next safe step
