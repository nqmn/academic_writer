param(
    [switch]$Quiet
)

$ErrorActionPreference = "Stop"

$scriptRoot = Split-Path -Parent $MyInvocation.MyCommand.Path
$repoRoot = Split-Path -Parent $scriptRoot
$packageRoot = Join-Path $repoRoot "packages\scholarly-research-writing-review"
$referencesRoot = Join-Path $packageRoot "references"

if (-not (Test-Path -LiteralPath $packageRoot)) {
    throw "Package root not found: $packageRoot"
}

$sourceFiles = @(
    "AGENTS.md",
    "AUTO_ROUTING_RULES.md",
    "COMMANDS.md",
    "METHODOLOGY_SOURCES.md",
    "README.md",
    "TEST_CASES.md"
)

$sourceDirectories = @(
    "anti_ai",
    "disciplines",
    "methodology",
    "notes",
    "phrases",
    "reviewer_response",
    "rhetorical_moves",
    "runtime",
    "standards",
    "styles",
    "workflows"
)

if (Test-Path -LiteralPath $referencesRoot) {
    Remove-Item -LiteralPath $referencesRoot -Recurse -Force
}

New-Item -ItemType Directory -Path $referencesRoot | Out-Null

foreach ($relativePath in $sourceFiles) {
    $sourcePath = Join-Path $repoRoot $relativePath
    $destinationPath = Join-Path $referencesRoot $relativePath
    Copy-Item -LiteralPath $sourcePath -Destination $destinationPath -Force
}

foreach ($relativePath in $sourceDirectories) {
    $sourcePath = Join-Path $repoRoot $relativePath
    $destinationPath = Join-Path $referencesRoot $relativePath
    Copy-Item -LiteralPath $sourcePath -Destination $destinationPath -Recurse -Force
}

if (-not $Quiet) {
    Write-Host "Synced package references from source tree to $referencesRoot"
}
