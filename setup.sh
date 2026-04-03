#!/bin/bash
#
# One-time setup for the Sarisari repo.
# Run this after cloning to enable shared Git hooks.
#
# What this does:
#   Tells Git to use .githooks/ (which is tracked in the repo)
#   instead of .git/hooks/ (which is local-only and not shared).
#   This means any hooks the team adds to .githooks/ will
#   automatically apply to everyone after a git pull.
#

echo "Configuring Git hooks..."
git config core.hooksPath .githooks
echo "✓ Done. Git hooks are now loaded from .githooks/"
echo ""
echo "Current hooks:"
ls -1 .githooks/
