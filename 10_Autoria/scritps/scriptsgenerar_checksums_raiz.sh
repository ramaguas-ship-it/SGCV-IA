#!/usr/bin/env bash
set -euo pipefail
cd "$(git rev-parse --show-toplevel)"
SALIDA="checksums.sha256"
TMP="$(mktemp)"
find 02_Evidencias 09_Publicacion/dataset_zenodo -type f \
  ! -name ".gitkeep" \
  | sort \
  | xargs -d '\n' sha256sum \
  > "$TMP"
mv "$TMP" "$SALIDA"
echo "Generado $SALIDA con $(wc -l < "$SALIDA") archivos."
echo "Verificar con: sha256sum -c $SALIDA"
