param(
    [string]$RepoRoot = "."
)

$ErrorActionPreference = "Stop"

Write-Host "Installing The Sixbell-Dev Way baseline..."

$homeKiro = Join-Path $HOME ".kiro"
$steeringTarget = Join-Path $homeKiro "steering"
$skillsTarget = Join-Path $homeKiro "skills"
$settingsTarget = Join-Path $homeKiro "settings"

New-Item -ItemType Directory -Force -Path $steeringTarget | Out-Null
New-Item -ItemType Directory -Force -Path $skillsTarget | Out-Null
New-Item -ItemType Directory -Force -Path $settingsTarget | Out-Null

$steeringSource = Join-Path $RepoRoot "baseline/global/kiro/steering"
$skillsSource = Join-Path $RepoRoot "baseline/global/kiro/skills"
$mcpSource = Join-Path $RepoRoot "baseline/global/kiro/settings/windows-mcp.json"
$mcpTarget = Join-Path $settingsTarget "mcp.json"

Write-Host "Copying steering files..."
Copy-Item "$steeringSource\*" $steeringTarget -Recurse -Force

Write-Host "Copying skills..."
Copy-Item "$skillsSource\*" $skillsTarget -Recurse -Force

Write-Host "Installing MCP config..."
Copy-Item $mcpSource $mcpTarget -Force

Write-Host "The Sixbell-Dev Way baseline installed successfully."
Write-Host "Next steps:"
Write-Host "1. Open Kiro"
Write-Host "2. Verify steering files appear in the steering panel"
Write-Host "3. Verify MCP servers appear in the MCP panel"
Write-Host "4. Import/install approved Powers from the central repository as needed"