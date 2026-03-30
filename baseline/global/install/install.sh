#!/usr/bin/env bash
set -euo pipefail

REPO_ROOT="${1:-.}"
MIN_NODE_VERSION="20.19.0"

require_command() {
	local name="$1"
	local hint="$2"
	if ! command -v "$name" >/dev/null 2>&1; then
		echo "$hint" >&2
		exit 1
	fi
}

require_minimum_node_version() {
	local current="$1"
	local minimum="$2"
	node -e '
		const current = process.argv[1].replace(/^v/, "").split(".").map(Number);
		const minimum = process.argv[2].split(".").map(Number);
		for (let i = 0; i < 3; i += 1) {
			const a = current[i] || 0;
			const b = minimum[i] || 0;
			if (a > b) process.exit(0);
			if (a < b) process.exit(1);
		}
		process.exit(0);
	' "$current" "$minimum"
}

echo "Installing The Sixbell-Dev Way baseline..."

require_command "node" "Node.js 20.19.0 or higher is required before installing The Sixbell-Dev Way baseline. Install Node.js, then rerun this script."
require_command "npm" "npm is required to install the official OpenSpec CLI. Ensure your Node.js installation includes npm, then rerun this script."

NODE_VERSION_RAW="$(node --version)"
if ! require_minimum_node_version "$NODE_VERSION_RAW" "$MIN_NODE_VERSION"; then
	echo "Node.js 20.19.0 or higher is required. Detected $NODE_VERSION_RAW. Upgrade Node.js, then rerun this script." >&2
	exit 1
fi

echo "Installing or updating the official OpenSpec CLI..."
npm install -g @fission-ai/openspec@latest

OPENSPEC_CMD="$(command -v openspec || true)"
if [ -z "$OPENSPEC_CMD" ]; then
	NPM_PREFIX="$(npm prefix -g)"
	if [ -x "$NPM_PREFIX/bin/openspec" ]; then
		OPENSPEC_CMD="$NPM_PREFIX/bin/openspec"
	elif [ -x "$NPM_PREFIX/openspec" ]; then
		OPENSPEC_CMD="$NPM_PREFIX/openspec"
	else
		echo "The OpenSpec CLI was installed, but the executable could not be located. Ensure your npm global bin directory is on PATH and rerun the installer." >&2
		exit 1
	fi
fi

OPENSPEC_VERSION="$("$OPENSPEC_CMD" --version)"
echo "OpenSpec CLI ready: $OPENSPEC_VERSION"

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
echo "What this installer did: validated Node.js $NODE_VERSION_RAW, installed/updated OpenSpec CLI ($OPENSPEC_VERSION), and copied steering, skills, MCP config, and global governance hooks into ~/.kiro"
echo "What this installer did NOT do: install Kiro, Node.js, Docker, uv/uvx, or create a new product repository"
echo "Next steps:"
echo "1. Open Kiro"
echo "2. Verify steering files appear in the steering panel"
echo "3. Verify MCP servers appear in the MCP panel"
echo "4. Verify global governance hooks appear in the hooks panel"
echo "5. Verify 'openspec --version' works in a terminal"
echo "6. Create a repository from an official project template to get project-local hooks, scripts, and OpenSpec bootstrap assets"
echo "7. Run the project template's OpenSpec bootstrap before relevant implementation begins"
echo "8. Import/install approved Powers from the central repository as needed"