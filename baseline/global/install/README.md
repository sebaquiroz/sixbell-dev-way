# Installer Notes — The Sixbell-Dev Way

This directory contains the global baseline installers for Windows and Linux.

## What the installers do

They copy the approved Sixbell baseline into the user's `~/.kiro/` directory:
- steering
- approved skills
- approved MCP configuration
- global governance hooks

## What the installers do not do

They do **not**:
- install Kiro itself
- install Node.js, Docker, Python, `uv`, or `uvx`
- create a new product repository
- install project dependencies
- install an external OpenSpec CLI

## OpenSpec note

In the current Sixbell baseline, OpenSpec is enforced as a repository workflow and artifact structure.

That means:
- each project should contain its own `openspec/` directory
- relevant changes should be represented there before implementation
- the installers do not manage an OpenSpec binary or CLI distribution

If Sixbell later standardizes an official OpenSpec CLI installation path, these installers can be extended explicitly.