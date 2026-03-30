# Installer Notes — The Sixbell-Dev Way

This directory contains the global baseline installers for Windows and Linux.

## What the installers do

They copy the approved Sixbell baseline into the user's `~/.kiro/` directory:
- steering
- approved skills
- approved MCP configuration
- global governance hooks

They also:
- validate that Node.js 20.19.0 or higher is available
- install or update the official OpenSpec CLI with `npm install -g @fission-ai/openspec@latest`
- verify that the `openspec` executable is available for project bootstrap

## What the installers do not do

They do **not**:
- install Kiro itself
- install Node.js, Docker, Python, `uv`, or `uvx`
- create a new product repository
- install project dependencies
- generate project-local OpenSpec assets for Kiro or GitHub Copilot by themselves

## OpenSpec note

The Sixbell baseline now adopts official Fission-AI OpenSpec as the formal change engine.

That means:
- the global installer provisions the shared OpenSpec CLI prerequisite
- each project should contain its own `openspec/` tree with `config.yaml`, `specs/`, `changes/`, and `changes/archive/`
- project-local tool-facing assets are generated during template bootstrap, not by the global installer alone

If the `openspec` executable is not available after installation, ensure your npm global bin directory is on `PATH` and rerun the installer.