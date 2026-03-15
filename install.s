#!/bin/bash

# Prompt Enhancer Pack v2.0 - Installer
# Context-aware prompt enhancement for Claude Code

echo ""
echo "🔧 Installing Prompt Enhancer Pack v2.0..."
echo ""

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
DEST="$HOME/.claude/skills"

for skill_dir in "$SCRIPT_DIR/skills"/*/; do
    skill_name=$(basename "$skill_dir")
    mkdir -p "$DEST/$skill_name"
    cp "$skill_dir/SKILL.md" "$DEST/$skill_name/SKILL.md"
    chmod 644 "$DEST/$skill_name/SKILL.md"
    echo "  ✅ /$skill_name"
done

echo ""
echo "Done! Restart Claude Code, then try:"
echo ""
echo "  /enhance explain docker"
echo "  /enhance-code add authentication    (detects your tech stack)"
echo "  /enhance-writing blog post about AI"
echo "  /enhance-for chatgpt explain kubernetes"
echo ""
