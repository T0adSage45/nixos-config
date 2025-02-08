#!/usr/bin/env bash

# fetch the repo's using GitHub CLI
REPOS=$(gh repo list --limit 100 | awk '{print $1}')

# Use fzf to select repo
SELECTED_REPO=$(echo "$REPOS" | fzf | awk -F'/' '{print $2}')

if [ -z "$SELECTED_REPO" ]; then
    echo "No repository selected."
    exit 1
fi

read -p "Do you want to clone '$SELECTED_REPO'? (Y/n): " CHOICE

if [[ "$CHOICE" == "y" || "$CHOICE" == "Y" || -z "$CHOICE" ]]; then
    gh repo clone "$SELECTED_REPO"
    echo "Repository cloned successfully!"
else
    echo "Not cloned."
fi
