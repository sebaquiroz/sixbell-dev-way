# Onboarding — The Sixbell-Dev Way

This guide explains how a new Sixbell developer should get ready to work using The Sixbell-Dev Way.

The goal is not only to install tools, but to understand the operating model behind them.

## 1. What you are onboarding into

You are not only installing an IDE setup.

You are onboarding into a standardized way of working where:
- OpenSpec is the source of truth for changes
- Kiro is the main execution environment
- security is mandatory
- human approval matters
- traceability matters
- reuse matters
- AWS-first is the architectural baseline

## 2. What you need

Before starting, ensure you have:
- access to the Sixbell GitHub organization
- access to the central `the-sixbell-dev-way` repository
- Kiro installed
- Node.js installed
- Python installed (if your projects require it)
- Docker installed (recommended, especially for some MCP servers)
- AWS CLI installed and configured if your role or project needs AWS integration
- `uv` installed if required by AWS MCP servers

## 3. Clone the baseline repository

```bash
git clone <sixbell-org-url>/the-sixbell-dev-way.git
cd the-sixbell-dev-way