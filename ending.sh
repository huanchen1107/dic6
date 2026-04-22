#!/bin/bash

echo "🛑 Finalizing Development Session..."
echo "----------------------------------------"

# 1. Remind to update tasks
read -p "⚠️ Have you fully updated tasks.md? (y/n): " tasks_updated
if [[ "$tasks_updated" != "y" ]]; then
    echo "❌ Please update tasks.md before running dev:ending."
    exit 1
fi

# 2. Archive OpenSpec change
read -p "📦 Enter OpenSpec change name to archive (leave blank to skip): " change_name
if [[ -n "$change_name" ]]; then
    echo "Archiving OpenSpec change: $change_name..."
    # Auto-confirm spec updates by piping 'Y'
    echo "Y" | openspec archive "$change_name"
else
    echo "Skipping OpenSpec archive."
fi

# 3. Write Handover Document
echo ""
echo "📝 Please write the handover context for the next session."
echo "Type your summary, then press Enter."
read -p "> " handover_context

echo "# Handover Document" > handover.md
echo "**Date:** $(date)" >> handover.md
echo "" >> handover.md
echo "## Context / Next Steps" >> handover.md
echo "$handover_context" >> handover.md

echo "✅ handover.md updated."

# 4. Git Push
echo ""
echo "🚀 Pushing code to GitHub..."
git add .
git commit -m "chore: session handover"
git push origin main

echo "----------------------------------------"
echo "🎉 Session wrapped up successfully! Goodbye."
