# 將本 repo 的 CLAUDE.md 與 skills 以符號連結方式裝進 %USERPROFILE%\.claude
# 建立符號連結需要「開發人員模式」或系統管理員權限
$ErrorActionPreference = "Stop"

$src = $PSScriptRoot
$dst = Join-Path $env:USERPROFILE ".claude"
New-Item -ItemType Directory -Force -Path (Join-Path $dst "skills") | Out-Null

function Link($from, $to) {
  if (Test-Path $to) {
    $item = Get-Item $to -Force
    if ($item.LinkType) {
      $item.Delete()
    } else {
      $stamp = Get-Date -Format "yyyyMMddHHmmss"
      Move-Item $to "$to.bak.$stamp"
      Write-Host "已備份既有項目：$to"
    }
  }
  New-Item -ItemType SymbolicLink -Path $to -Target $from | Out-Null
  Write-Host "linked $to -> $from"
}

Link (Join-Path $src "CLAUDE.md") (Join-Path $dst "CLAUDE.md")
Get-ChildItem (Join-Path $src "skills") -Directory | ForEach-Object {
  Link $_.FullName (Join-Path (Join-Path $dst "skills") $_.Name)
}
