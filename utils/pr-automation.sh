#!/bin/bash

# PR Automation Script
# Automates pull request creation and management

echo "🦈 PR Automation"
echo "================"

# Check if gh CLI is installed
if ! command -v gh &> /dev/null; then
    echo "❌ GitHub CLI (gh) is not installed"
    echo "Install from: https://cli.github.com/"
    exit 1
fi

# Get current branch
CURRENT_BRANCH=$(git branch --show-current)

if [ "$CURRENT_BRANCH" = "main" ] || [ "$CURRENT_BRANCH" = "master" ]; then
    echo "❌ Cannot create PR from main/master branch"
    exit 1
fi

echo "Current branch: $CURRENT_BRANCH"
echo ""

# Push current branch
echo "Pushing branch to remote..."
git push -u origin $CURRENT_BRANCH

# Get PR details
echo "Enter PR title:"
read pr_title

echo "Enter PR description (optional):"
read pr_description

# Create PR
echo "Creating pull request..."
gh pr create --title "$pr_title" --body "$pr_description" --base main

echo "✅ Pull request created successfully!"
echo "View it with: gh pr view"
