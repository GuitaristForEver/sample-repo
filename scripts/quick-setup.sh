#!/bin/bash

# Quick Setup Script
# Automates common project setup tasks

echo "🚀 Quick Project Setup"
echo "====================="

# Initialize git if not already done
if [ ! -d .git ]; then
    echo "Initializing git repository..."
    git init
    git branch -m main
fi

# Create common project directories
echo "Creating project structure..."
mkdir -p src tests docs scripts

# Create basic .gitignore
if [ ! -f .gitignore ]; then
    cat > .gitignore << EOL
node_modules/
.env
.DS_Store
*.log
dist/
build/
EOL
fi

echo "✅ Project setup complete!"
