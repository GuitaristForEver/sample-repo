#!/bin/bash

# Hotfix deployment script
# Quick emergency fixes

echo "🔥 Hotfix Deployment"
echo "==================="

BRANCH=$(git branch --show-current)

if [ "$BRANCH" != "main" ]; then
    echo "Deploying hotfix from branch: $BRANCH"
    git push origin $BRANCH
    echo "✅ Hotfix deployed!"
else
    echo "⚠️  Run from a hotfix branch"
    exit 1
fi
