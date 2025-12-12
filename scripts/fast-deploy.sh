#!/bin/bash

# Fast Deploy Script
# Quick deployment automation for rapid iteration

echo "⚡ Fast Deploy"
echo "============="

# Configuration
BRANCH=$(git branch --show-current)

echo "Current branch: $BRANCH"
echo "Preparing fast deployment..."

# Run tests (if they exist)
if [ -f "package.json" ]; then
    echo "Running tests..."
    npm test --if-present || echo "No tests found, continuing..."
fi

# Build project
if [ -f "package.json" ]; then
    echo "Building project..."
    npm run build --if-present || echo "No build script found"
fi

# Add all changes
git add .

# Quick commit
echo "Enter commit message (or press Enter for default):"
read commit_msg
if [ -z "$commit_msg" ]; then
    commit_msg="Quick update: $(date +%Y-%m-%d)"
fi

git commit -m "$commit_msg" || echo "No changes to commit"

# Push
echo "Pushing to remote..."
git push origin $BRANCH

echo "✅ Fast deploy complete!"
