#!/bin/bash
# === publish.sh ===
# Simple script to publish Logseq exported pages to GitHub Pages

set -e  # stop if any command fails

# Ensure we’re in the right branch
git init
git checkout -B gh-pages

# Stage all changes
git add --all

# Commit (use timestamp for convenience)
git commit -m "Update public pages: $(date -u +"%Y-%m-%d %H:%M:%SZ")" || echo "No changes to commit."

# Push to GitHub Pages branch (force overwrite old static site)
git push -f origin gh-pages

echo "✅ Published successfully! Check your site in 1–2 minutes."
