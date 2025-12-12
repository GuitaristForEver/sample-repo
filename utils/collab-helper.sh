#!/bin/bash

# Collaboration Helper
# Assists with creating co-authored commits for pair programming

echo "👥 Collaboration Helper"
echo "======================="

# Function to create co-authored commit
create_coauthored_commit() {
    echo "Enter commit message:"
    read commit_msg

    echo "Enter co-author name:"
    read coauthor_name

    echo "Enter co-author email:"
    read coauthor_email

    git commit -m "${commit_msg}

Co-authored-by: ${coauthor_name} <${coauthor_email}>"

    echo "✅ Co-authored commit created!"
}

# Check if there are staged changes
if git diff --cached --quiet; then
    echo "⚠️  No staged changes found. Stage your changes first with 'git add'"
    exit 1
fi

create_coauthored_commit
