#!/usr/bin/env sh

REPOS=("literature" "tex" "misc" "data" "figures")

echo "Will create the following directories:"
for repo in "${REPOS[@]}"; do
  echo "- $repo"
done

read -p "Proceed? (y/N): " confirm

if [[ "$confirm" =~ ^[Yy]$ ]]; then
  for repo in "${REPOS[@]}"; do
    mkdir -p "$repo"
    echo "Created directory: $repo"
  done
  echo "All specified directories created."
else
  echo "No directories were created."
fi
