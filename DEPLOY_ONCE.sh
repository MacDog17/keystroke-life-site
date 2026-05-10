#!/bin/bash
# Run this once from Terminal to create the GitHub repo and push the site.
# After this, Vercel picks it up automatically — you'll never need to touch this script again.

set -e
cd "$(dirname "$0")"

echo "→ Initialising git..."
git init
git config user.email "musicmixer@mac.com"
git config user.name "MacDog17"
git branch -M main
git add .
git commit -m "feat: initial keystrokelife.com site"

echo "→ Creating GitHub repo..."
gh repo create MacDog17/keystroke-life-site --public --source=. --remote=origin --push \
  --description "keystrokelife.com — Keystroke Life marketing site"

echo ""
echo "✅ Done! Repo is live at: https://github.com/MacDog17/keystroke-life-site"
echo ""
echo "Next steps:"
echo "  1. Go to https://vercel.com/new"
echo "  2. Import MacDog17/keystroke-life-site"
echo "  3. No build settings needed — it's static HTML"
echo "  4. After deploy, go to Project Settings → Domains → add keystrokelife.com"
echo ""
