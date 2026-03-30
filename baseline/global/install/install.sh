#!/usr/bin/env bash
set -euo pipefail

REPO_ROOT="${1:-.}"

echo "Installing The Sixbell-Dev Way baseline..."

HOME_KIRO="$HOME/.kiro"
STEERING_TARGET="$HOME_KIRO/steering"
SKILLS_TARGET="$HOME_KIRO/skills"
SETTINGS_TARGET="$HOME_KIRO/settings"

mkdir -p "$STEERING_TARGET"
mkdir -p "$SKILLS_TARGET"
mkdir -p "$SETTINGS_TARGET"

STEERING_SOURCE="$REPO_ROOT/baseline/global/kiro/steering"
SKILLS_SOURCE="$REPO_ROOT/baseline/global/kiro/skills"
MCP_SOURCE="$REPO_ROOT/baseline/global/kiro/settings/linux-mcp.json"
MCP_TARGET="$SETTINGS_TARGET/mcp.json"

echo "Copying steering files..."
cp -R "$STEERING_SOURCE/"* "$STEERING_TARGET/"

echo "Copying skills..."
cp -R "$SKILLS_SOURCE/"* "$SKILLS_TARGET/"

echo "Installing MCP config..."
cp "$MCP_SOURCE" "$MCP_TARGET"

echo "The Sixbell-Dev Way baseline installed successfully."
echo "Next steps:"
echo "1. Open Kiro"
echo "2. Verify steering files appear in the steering panel"
echo "3. Verify MCP servers appear in the MCP panel"
echo "4. Import/install approved Powers from the central repository as needed"