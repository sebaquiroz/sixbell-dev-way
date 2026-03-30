#!/usr/bin/env bash
set -euo pipefail

REPO_ROOT="${1:-.}"

echo "Installing The Sixbell-Dev Way baseline..."

HOME_KIRO="$HOME/.kiro"
STEERING_TARGET="$HOME_KIRO/steering"
SKILLS_TARGET="$HOME_KIRO/skills"
SETTINGS_TARGET="$HOME_KIRO/settings"
HOOKS_TARGET="$HOME_KIRO/hooks"

mkdir -p "$STEERING_TARGET"
mkdir -p "$SKILLS_TARGET"
mkdir -p "$SETTINGS_TARGET"
mkdir -p "$HOOKS_TARGET"

STEERING_SOURCE="$REPO_ROOT/baseline/global/kiro/steering"
SKILLS_SOURCE="$REPO_ROOT/baseline/global/kiro/skills"
MCP_SOURCE="$REPO_ROOT/baseline/global/kiro/settings/linux-mcp.json"
MCP_TARGET="$SETTINGS_TARGET/mcp.json"
HOOKS_SOURCE="$REPO_ROOT/baseline/global/hooks"

echo "Copying steering files..."
cp -R "$STEERING_SOURCE/"* "$STEERING_TARGET/"

echo "Copying skills..."
cp -R "$SKILLS_SOURCE/"* "$SKILLS_TARGET/"

echo "Installing MCP config..."
cp "$MCP_SOURCE" "$MCP_TARGET"

echo "Installing global governance hooks..."
for hook in \
	"spec-gate-before-apply.kiro.hook" \
	"architecture-review-manual.kiro.hook" \
	"security-pre-commit-review.kiro.hook"
do
	cp "$HOOKS_SOURCE/$hook" "$HOOKS_TARGET/$hook"
done

echo "The Sixbell-Dev Way baseline installed successfully."
echo "What this installer did: copied steering, skills, MCP config, and global governance hooks into ~/.kiro"
echo "What this installer did NOT do: install Kiro, OpenSpec CLI, Node.js, Docker, uv/uvx, or create a new product repository"
echo "Next steps:"
echo "1. Open Kiro"
echo "2. Verify steering files appear in the steering panel"
echo "3. Verify MCP servers appear in the MCP panel"
echo "4. Verify global governance hooks appear in the hooks panel"
echo "5. Create a repository from an official project template to get project-local hooks and scripts"
echo "6. Add or update OpenSpec artifacts inside the new repository's openspec/ folder"
echo "7. Import/install approved Powers from the central repository as needed"