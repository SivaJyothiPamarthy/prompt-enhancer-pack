#!/bin/bash

echo ""
echo "🗑️  Uninstalling Prompt Enhancer Pack..."
echo ""

DEST="$HOME/.claude/skills"

for skill in enhance enhance-code enhance-writing enhance-for; do
    if [ -d "$DEST/$skill" ]; then
        rm -rf "${DEST:?}/$skill"
        echo "  ✅ Removed /$skill"
    else
        echo "  ⏭️  /$skill not found, skipping"
    fi
done

echo ""
echo "Done! Restart Claude Code to apply changes."
echo ""
