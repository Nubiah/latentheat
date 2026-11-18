#!/usr/bin/env bash
# latheat-pull — mettre à jour le site depuis GitHub avant de bosser
# Usage: latheat-pull
set -euo pipefail
REPO="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$REPO"

echo "❄️  Latent Heat — mise à jour..."
git fetch origin
LOCAL=$(git rev-parse HEAD)
REMOTE=$(git rev-parse origin/main)

if [ "$LOCAL" = "$REMOTE" ]; then
    echo "✅ Déjà à jour ($(git log -1 --format='%h %s'))"
else
    # S'il y a des modifs locales non commitées, on prévient au lieu d'écraser
    if ! git diff --quiet || ! git diff --cached --quiet || [ -n "$(git status --porcelain)" ]; then
        echo "⚠️  Modifications locales non commitées :"
        git status --short | head -20
        echo "   → Committe d'abord avec latheat-push, ou stash."
        exit 1
    fi
    git pull --ff-only origin main
    echo "✅ Mis à jour : $(git log -1 --format='%h %s')"
fi
