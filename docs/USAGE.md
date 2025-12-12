# Usage Guide

## Available Scripts

### Quick Setup (`scripts/quick-setup.sh`)

Quickly set up a new project with common structure and files.

```bash
bash scripts/quick-setup.sh
```

**Features:**
- Initializes git repository
- Creates project directory structure
- Sets up .gitignore with common patterns

### Collaboration Helper (`utils/collab-helper.sh`)

Create co-authored commits for pair programming sessions.

```bash
# Stage your changes first
git add .

# Run the script
bash utils/collab-helper.sh
```

**Use Cases:**
- Pair programming sessions
- Collaborative development
- Acknowledging contributors

### Fast Deploy (`scripts/fast-deploy.sh`)

Quickly commit and deploy changes for rapid iteration.

```bash
bash scripts/fast-deploy.sh
```

**Features:**
- Runs tests if available
- Builds project
- Commits and pushes changes
- Perfect for quick iterations

### PR Automation (`utils/pr-automation.sh`)

Automate pull request creation using GitHub CLI.

```bash
# Create a feature branch first
git checkout -b feature/my-feature

# Make your changes and commit

# Run the automation
bash utils/pr-automation.sh
```

**Requirements:**
- GitHub CLI (gh) must be installed
- Must be run from a non-main branch

## Installation

1. Clone this repository
2. Make scripts executable: `chmod +x scripts/*.sh utils/*.sh`
3. Use scripts as needed in your workflow

## Contributing

See [CONTRIBUTING.md](CONTRIBUTING.md) for contribution guidelines.
