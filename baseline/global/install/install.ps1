param(
    [string]$RepoRoot = "."
)

$ErrorActionPreference = "Stop"

Write-Host "Installing The Sixbell-Dev Way baseline..."

$homeKiro = Join-Path $HOME ".kiro"
$steeringTarget = Join-Path $homeKiro "steering"
$skillsTarget = Join-Path $homeKiro "skills"
$settingsTarget = Join-Path $homeKiro "settings"
$hooksTarget = Join-Path $homeKiro "hooks"

New-Item -ItemType Directory -Force -Path $steeringTarget | Out-Null
New-Item -ItemType Directory -Force -Path $skillsTarget | Out-Null
New-Item -ItemType Directory -Force -Path $settingsTarget | Out-Null
New-Item -ItemType Directory -Force -Path $hooksTarget | Out-Null

$steeringSource = Join-Path $RepoRoot "baseline/global/kiro/steering"
$skillsSource = Join-Path $RepoRoot "baseline/global/kiro/skills"
$mcpSource = Join-Path $RepoRoot "baseline/global/kiro/settings/windows-mcp.json"
$mcpTarget = Join-Path $settingsTarget "mcp.json"
$hooksSource = Join-Path $RepoRoot "baseline/global/hooks"
$globalHooks = @(
    "spec-gate-before-apply.kiro.hook",
    "architecture-review-manual.kiro.hook",
    "security-pre-commit-review.kiro.hook"
)

Write-Host "Copying steering files..."
Copy-Item "$steeringSource\*" $steeringTarget -Recurse -Force

Write-Host "Copying skills..."
Copy-Item "$skillsSource\*" $skillsTarget -Recurse -Force

Write-Host "Installing MCP config..."
Copy-Item $mcpSource $mcpTarget -Force

Write-Host "Installing global governance hooks..."
foreach ($hook in $globalHooks) {
    $source = Join-Path $hooksSource $hook
    $target = Join-Path $hooksTarget $hook
    Copy-Item $source $target -Force
}

Write-Host "The Sixbell-Dev Way baseline installed successfully."
Write-Host "What this installer did: copied steering, skills, MCP config, and global governance hooks into ~/.kiro"
Write-Host "What this installer did NOT do: install Kiro, OpenSpec CLI, Node.js, Docker, uv/uvx, or create a new product repository"
Write-Host "Next steps:"
Write-Host "1. Open Kiro"
Write-Host "2. Verify steering files appear in the steering panel"
Write-Host "3. Verify MCP servers appear in the MCP panel"
Write-Host "4. Verify global governance hooks appear in the hooks panel"
Write-Host "5. Create a repository from an official project template to get project-local hooks and scripts"
Write-Host "6. Add or update OpenSpec artifacts inside the new repository's openspec/ folder"
Write-Host "7. Import/install approved Powers from the central repository as needed"