#!/usr/bin/env bash
# Commit and push this repo, build the site (future-dated posts included) into
# the GitHub Pages repo, then commit and push that.
#
#   ./publish.sh ["commit message"]
set -euo pipefail

SOURCE_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SITE_DIR="$HOME/Work/sushrutb.github.io"
MESSAGE="${1:-Publish $(date '+%Y-%m-%d %H:%M')}"

commit_and_push() {
  local dir="$1"
  git -C "$dir" add -A
  if git -C "$dir" diff --cached --quiet; then
    echo ">> $dir: nothing to commit"
  else
    git -C "$dir" commit -q -m "$MESSAGE"
    echo ">> $dir: committed"
  fi
  git -C "$dir" push -q
  echo ">> $dir: pushed"
}

commit_and_push "$SOURCE_DIR"

echo ">> Building into $SITE_DIR"
(cd "$SOURCE_DIR" && bundle exec jekyll build --destination "$SITE_DIR" --future)

commit_and_push "$SITE_DIR"
