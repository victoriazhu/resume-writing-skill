#!/usr/bin/env bash
set -e

REPO="https://github.com/victoriazhu/resume-writing-skill.git"
TMP_DIR=$(mktemp -d)

echo "📦 Downloading resume-writing-skill..."
git clone --depth 1 "$REPO" "$TMP_DIR" 2>/dev/null || {
  echo "❌ Failed to clone repo. Check internet connection."
  exit 1
}

INSTALLED=0

# Hermes Agent
if [ -d "$HOME/.hermes/skills" ]; then
  mkdir -p "$HOME/.hermes/skills/resume-writing"
  cp -r "$TMP_DIR"/* "$HOME/.hermes/skills/resume-writing/"
  echo "✅ Installed for Hermes Agent -> ~/.hermes/skills/resume-writing/"
  INSTALLED=1
fi

# Cursor
if [ -d "$HOME/.cursor/skills" ] || [ -d "$HOME/.cursor/rules" ]; then
  mkdir -p "$HOME/.cursor/skills"
  cp "$TMP_DIR/SKILL.md" "$HOME/.cursor/skills/resume-writing.md"
  echo "✅ Installed for Cursor -> ~/.cursor/skills/resume-writing.md"
  INSTALLED=1
fi

# Windsurf
if [ -d "$HOME/.windsurf/skills" ]; then
  mkdir -p "$HOME/.windsurf/skills"
  cp "$TMP_DIR/SKILL.md" "$HOME/.windsurf/skills/resume-writing.md"
  echo "✅ Installed for Windsurf -> ~/.windsurf/skills/resume-writing.md"
  INSTALLED=1
fi

# Claude Code - check current project
if [ -f "CLAUDE.md" ]; then
  echo "⚠️  CLAUDE.md already exists. Append manually: cat $TMP_DIR/SKILL.md >> CLAUDE.md"
  INSTALLED=1
elif [ -d ".git" ]; then
  cp "$TMP_DIR/SKILL.md" "./CLAUDE.md"
  echo "✅ Installed for Claude Code -> ./CLAUDE.md"
  INSTALLED=1
fi

rm -rf "$TMP_DIR"

if [ "$INSTALLED" -eq 0 ]; then
  echo ""
  echo "⚠️  No supported AI agent detected."
  echo "   Manual install: git clone $REPO"
  echo "   Then copy SKILL.md to your agent's skills directory."
  echo "   Supported: Hermes Agent, Cursor, Windsurf, Claude Code, Codex, Gemini CLI"
  exit 0
fi

echo ""
echo "🎉 Done! Try saying: 帮我写一份简历"
