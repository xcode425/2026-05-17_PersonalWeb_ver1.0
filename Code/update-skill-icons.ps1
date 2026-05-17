$ErrorActionPreference = 'Stop'

$projectRoot = Split-Path -Parent $PSScriptRoot
$outputPath = Join-Path $PSScriptRoot 'skill-icons.js'
$imageExtensions = @('.png', '.jpg', '.jpeg', '.webp', '.gif', '.svg', '.avif')
$iconRoot = Get-ChildItem -LiteralPath $projectRoot -Directory |
  ForEach-Object {
    $candidate = Join-Path $_.FullName 'icon'
    if (Test-Path -LiteralPath $candidate) {
      Get-Item -LiteralPath $candidate
    }
  } |
  Select-Object -First 1

if (-not $iconRoot) {
  throw "Icon root not found: $iconRoot"
}

$assetFolderName = Split-Path -Leaf (Split-Path -Parent $iconRoot.FullName)

$categories = Get-ChildItem -LiteralPath $iconRoot.FullName -Directory |
  Sort-Object Name |
  ForEach-Object {
    $folder = $_
    $files = Get-ChildItem -LiteralPath $folder.FullName -File |
      Where-Object { $imageExtensions -contains $_.Extension.ToLowerInvariant() } |
      Sort-Object Name |
      ForEach-Object {
        [ordered]@{
          name = $_.Name
          label = [System.IO.Path]::GetFileNameWithoutExtension($_.Name)
        }
      }

    [ordered]@{
      name = $folder.Name
      files = @($files)
    }
  }

$manifest = [ordered]@{
  basePath = "../$assetFolderName/icon/"
  categories = @($categories)
}

$json = $manifest | ConvertTo-Json -Depth 8
$content = "window.SKILL_ICON_MANIFEST = $json;`n"
[System.IO.File]::WriteAllText($outputPath, $content, [System.Text.UTF8Encoding]::new($false))
Write-Host "Updated $outputPath"
