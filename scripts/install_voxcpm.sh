#!/usr/bin/env bash
# Installs VoxCPM (https://github.com/OpenBMB/VoxCPM) into a Python virtual environment.
set -euo pipefail

VENV_DIR="${1:-.venv-voxcpm}"

if ! command -v python3 >/dev/null 2>&1; then
    echo "python3 is required but was not found on PATH." >&2
    exit 1
fi

python3 -m venv "$VENV_DIR"
# shellcheck disable=SC1091
source "$VENV_DIR/bin/activate"

pip install --upgrade pip
pip install voxcpm

echo "VoxCPM installed into $VENV_DIR."
echo "Activate it with: source $VENV_DIR/bin/activate"
