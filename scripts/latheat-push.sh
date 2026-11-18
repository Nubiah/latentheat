#!/usr/bin/env bash
# latheat-push — publier les modifications (commit + push → site à jour en ~1 min)
# Usage: latheat-push ["message de commit"]
set -euo pipefail
REPO="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$REPO"

MSG="${1:-}"

if [ -z "$(git status --porcelain)" ]; then
    echo "✅ Rien à publier — tout est déjà commité."
    exit 0
fi

echo "📝 Modifications :"
git status --short | head -30
NB=$(git status --porcelain | wc -l)
[ "$NB" -gt 30 ] && echo "   … et $((NB-30)) autres"

if [ -z "$MSG" ]; then
    echo "❓ Message de commit ? (Entrée = message auto)"
    read -r MSG || MSG=""
    [ -z "$MSG" ] && MSG="cours: mise à jour du contenu"
fi

git add -A
git commit -q -m "$MSG"
echo "⏳ Push en cours…"
git push origin main
echo "✅ Publié ! Le site sera à jour dans ~1-2 min :"
echo "   https://nubiah.github.io/latentheat/"
echo "   (suivre le build: https://github.com/Nubiah/latentheat/actions)"
