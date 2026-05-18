#!/bin/bash
set -e
cd "$(dirname "$0")"

if [ "$(git branch --show-current)" != "source" ]; then
  echo "ERROR: Must be on 'source' branch. Run: git checkout source"
  exit 1
fi

echo "==> Generating static files..."
npx hexo clean
npx hexo generate

echo "==> Deploying to main branch..."
cd public
git init
git checkout -b main
touch .nojekyll
git add -A
git commit -m "Deploy: $(date '+%Y-%m-%d %H:%M:%S')" || true
git push -f git@github.com:qw-nb/qw-nb.github.io.git HEAD:main
cd ..

echo "==> Pushing source to source branch..."
git add -A
git commit -m "$(date '+%Y-%m-%d') update" || echo "(no changes to commit)"
git push origin source

echo "==> Done! Site live at https://qw-nb.github.io/"
