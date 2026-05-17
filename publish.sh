#!/bin/bash
set -e
cd "$(dirname "$0")"

echo "==> Generating static files..."
npx hexo generate

echo "==> Deploying to GitHub Pages (master branch)..."
npx hexo deploy

echo "==> Pushing source to main branch..."
git add -A
git commit -m "$(date '+%Y-%m-%d') update" || echo "(no changes to commit)"
git push origin main

echo "==> Done!"
