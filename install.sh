#!/usr/bin/env bash
# 將本 repo 的 CLAUDE.md 與 skills 以符號連結方式裝進 ~/.claude
# 可重複執行；已存在的實體檔案會先備份成 .bak.<時間>
set -euo pipefail

SRC="$(cd "$(dirname "$0")" && pwd)"
DST="${HOME}/.claude"
mkdir -p "$DST/skills"

link() {
  local from="$1" to="$2"
  if [ -e "$to" ] && [ ! -L "$to" ]; then
    mv "$to" "$to.bak.$(date +%Y%m%d%H%M%S)"
    echo "已備份既有項目：$to"
  fi
  ln -sfn "$from" "$to"
  echo "linked $to -> $from"
}

link "$SRC/CLAUDE.md" "$DST/CLAUDE.md"
for d in "$SRC"/skills/*/; do
  link "${d%/}" "$DST/skills/$(basename "$d")"
done
