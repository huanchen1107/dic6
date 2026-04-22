#!/bin/bash

echo "🚀 Initializing Development Environment..."
echo "----------------------------------------"

echo "📥 Pulling latest changes from GitHub..."
git pull origin main

echo ""
if [ -f "handover.md" ]; then
    echo "📋 HANDOVER DOCUMENT FOUND:"
    echo "----------------------------------------"
    cat handover.md
    echo "----------------------------------------"
else
    echo "ℹ️ No handover.md found. Starting fresh."
fi

echo ""
echo "✅ Startup complete. Ready for development!"
