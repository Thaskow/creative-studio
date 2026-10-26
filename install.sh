#!/usr/bin/env bash
set -euo pipefail

here="$(cd "$(dirname "$0")" && pwd)"
dest="${CLAUDE_HOME:-$HOME/.claude}"

mkdir -p "$dest/skills" "$dest/agents"

for src in "$here"/skills/*/; do
  name="$(basename "$src")"
  if [ -e "$dest/skills/$name" ]; then
    read -r -p "skills/$name existe déjà. Écraser ? [o/N] " a
    [ "${a:-n}" = "o" ] || continue
    rm -rf "$dest/skills/$name"
  fi
  cp -r "$src" "$dest/skills/$name"
  echo "✓ skills/$name"
done

for f in "$here"/agents/*.md; do
  name="$(basename "$f")"
  if [ -e "$dest/agents/$name" ]; then
    read -r -p "agents/$name existe déjà. Écraser ? [o/N] " a
    [ "${a:-n}" = "o" ] || continue
  fi
  cp "$f" "$dest/agents/$name"
  echo "✓ agents/$name"
done

echo "Terminé. Relancez Claude Code puis tapez /creative-studio."
