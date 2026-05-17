$ErrorActionPreference = 'Stop'

$projectRoot = Split-Path -Parent $PSScriptRoot
$outputPath = Join-Path $PSScriptRoot 'personal-images.js'
$imageExtensions = @('.png', '.jpg', '.jpeg', '.webp', '.gif', '.svg', '.avif')
$personalRoot = Get-ChildItem -LiteralPath $projectRoot -Directory |
  ForEach-Object {
    $candidate = Join-Path $_.FullName 'Perosonal'
    if (Test-Path -LiteralPath $candidate) {
      Get-Item -LiteralPath $candidate
    }
  } |
  Select-Object -First 1

if (-not $personalRoot) {
  throw 'Personal image root not found.'
}

$assetFolderName = Split-Path -Leaf (Split-Path -Parent $personalRoot.FullName)

$categories = Get-ChildItem -LiteralPath $personalRoot.FullName -Directory |
  Sort-Object {
    $name = $_.Name.ToLowerInvariant()
    if ($name -eq 'graphic design') { '0' }
    elseif ($name -eq 'others') { '2' }
    else { "1-$name" }
  } |
  ForEach-Object {
    $folder = $_
    $files = Get-ChildItem -LiteralPath $folder.FullName -File |
      Where-Object { $imageExtensions -contains $_.Extension.ToLowerInvariant() } |
      Sort-Object { $_.Name.ToLowerInvariant() } |
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
  basePath = "../$assetFolderName/Perosonal/"
  categories = @($categories)
}

$json = $manifest | ConvertTo-Json -Depth 8
$content = "window.PERSONAL_IMAGE_MANIFEST = $json;`n"
[System.IO.File]::WriteAllText($outputPath, $content, [System.Text.UTF8Encoding]::new($false))
Write-Host "Updated $outputPath"
