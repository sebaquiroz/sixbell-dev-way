param(
    [string]$RepoRoot = "."
)

$ErrorActionPreference = "Stop"
$minimumNodeVersion = [Version]"20.19.0"

function Get-RequiredCommand {
    param(
        [Parameter(Mandatory = $true)]
        [string]$Name,
        [Parameter(Mandatory = $true)]
        [string]$InstallHint
    )

    $command = Get-Command $Name -ErrorAction SilentlyContinue
    if (-not $command) {
        throw "$InstallHint"
    }

    return $command
}

Write-Host "Installing The Sixbell-Dev Way baseline..."

$nodeCommand = Get-RequiredCommand -Name "node" -InstallHint "Node.js 20.19.0 or higher is required before installing The Sixbell-Dev Way baseline. Install Node.js, then rerun this script."
$npmCommand = Get-RequiredCommand -Name "npm" -InstallHint "npm is required to install the official OpenSpec CLI. Ensure your Node.js installation includes npm, then rerun this script."

$nodeVersionOutput = (& $nodeCommand.Source --version).Trim()
$normalizedNodeVersion = $nodeVersionOutput.TrimStart("v")
$nodeVersion = [Version]$normalizedNodeVersion

if ($nodeVersion -lt $minimumNodeVersion) {
    throw "Node.js 20.19.0 or higher is required. Detected $nodeVersionOutput. Upgrade Node.js, then rerun this script."
}

Write-Host "Installing or updating the official OpenSpec CLI..."
& $npmCommand.Source install --global @fission-ai/openspec@latest

$npmGlobalPrefix = (& $npmCommand.Source prefix --global).Trim()
$openspecPath = $null

foreach ($candidate in @(
    (Join-Path $npmGlobalPrefix "openspec.cmd"),
    (Join-Path $npmGlobalPrefix "openspec")
)) {
    if (Test-Path $candidate) {
        $openspecPath = $candidate
        break
    }
}

if (-not $openspecPath) {
    $openspecCommand = Get-Command "openspec" -ErrorAction SilentlyContinue
    if ($openspecCommand) {
        $openspecPath = $openspecCommand.Source
    }
}

if (-not $openspecPath) {
    throw "The OpenSpec CLI was installed, but the executable could not be located. Ensure your npm global bin directory is on PATH and rerun the installer."
}

$openspecVersion = (& $openspecPath --version).Trim()
Write-Host "OpenSpec CLI ready: $openspecVersion"

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
Write-Host "What this installer did: validated Node.js $nodeVersionOutput, installed/updated OpenSpec CLI ($openspecVersion), and copied steering, skills, MCP config, and global governance hooks into ~/.kiro"
Write-Host "What this installer did NOT do: install Kiro, Node.js, Docker, uv/uvx, or create a new product repository"
Write-Host "Next steps:"
Write-Host "1. Open Kiro"
Write-Host "2. Verify steering files appear in the steering panel"
Write-Host "3. Verify MCP servers appear in the MCP panel"
Write-Host "4. Verify global governance hooks appear in the hooks panel"
Write-Host "5. Verify 'openspec --version' works in a terminal"
Write-Host "6. Create a repository from an official project template to get project-local hooks, scripts, and OpenSpec bootstrap assets"
Write-Host "7. Run the project template's OpenSpec bootstrap before relevant implementation begins"
Write-Host "8. Import/install approved Powers from the central repository as needed"