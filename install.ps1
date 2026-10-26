$ErrorActionPreference = 'Stop'

$here = $PSScriptRoot
$dest = if ($env:CLAUDE_HOME) { $env:CLAUDE_HOME } else { Join-Path $env:USERPROFILE '.claude' }

New-Item -ItemType Directory -Force (Join-Path $dest 'skills'), (Join-Path $dest 'agents') | Out-Null

foreach ($src in Get-ChildItem (Join-Path $here 'skills') -Directory) {
    $target = Join-Path $dest "skills\$($src.Name)"
    if (Test-Path $target) {
        $a = Read-Host "skills/$($src.Name) existe déjà. Écraser ? [o/N]"
        if ($a -ne 'o') { continue }
        Remove-Item $target -Recurse -Force
    }
    Copy-Item $src.FullName $target -Recurse
    Write-Host "OK skills/$($src.Name)"
}

foreach ($f in Get-ChildItem (Join-Path $here 'agents') -Filter *.md) {
    $target = Join-Path $dest "agents\$($f.Name)"
    if (Test-Path $target) {
        $a = Read-Host "agents/$($f.Name) existe déjà. Écraser ? [o/N]"
        if ($a -ne 'o') { continue }
    }
    Copy-Item $f.FullName $target -Force
    Write-Host "OK agents/$($f.Name)"
}

Write-Host 'Terminé. Relancez Claude Code puis tapez /creative-studio.'
