#!/bin/bash
set -e

# Prompt Enhancer Pack - One-line installer
# Run: chmod +x install.sh && ./install.sh

echo ""
echo "🔧 Installing Prompt Enhancer Pack..."
echo ""

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
DEST="$HOME/.claude/skills"

if [ ! -d "$HOME/.claude" ]; then
    echo "  ❌ Claude Code config directory (~/.claude) not found."
    echo "     Please install Claude Code first: https://claude.ai/claude-code"
    exit 1
fi

for skill_dir in "$SCRIPT_DIR/skills"/*/; do
    skill_name=$(basename "$skill_dir")
    if [ -f "$DEST/$skill_name/SKILL.md" ]; then
        action="updated"
    else
        action="installed"
    fi
    mkdir -p "$DEST/$skill_name"
    cp "$skill_dir/SKILL.md" "$DEST/$skill_name/SKILL.md"
    chmod 644 "$DEST/$skill_name/SKILL.md"
    echo "  ✅ /$skill_name ($action)"
done

echo ""
echo "Done! Restart Claude Code, then try:"
echo "  /enhance explain docker"
echo "  /enhance-code python web scraper"
echo "  /enhance-writing blog post about AI"
echo "  /enhance-for chatgpt explain kubernetes"
echo ""
