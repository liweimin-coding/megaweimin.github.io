#!/usr/bin/env bash
set -euo pipefail

PACKAGE_DIR="/home/megacube/项目分析/Megacube-Pinvou3-NVFP4-MTP2-Offline-Installer-20260617-v5/pinvou install"
HOST="127.0.0.1"
PORT="8787"

cd "$PACKAGE_DIR"
echo "Serving Pinvou installer from: $PACKAGE_DIR"
echo "Download URL: http://$HOST:$PORT/pinvou3-nvfp4-mtp2-complete-offline-kit-20260617-v5.tar.zst"
python3 -m http.server "$PORT" --bind "$HOST"
