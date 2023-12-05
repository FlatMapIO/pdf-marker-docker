#!/usr/bin/env bash
eval "$(pkgx --shellcode)"
dev

# ====================================================
# script
# ====================================================

aria2c https://github.com/VikParuchuri/marker/archive/refs/heads/master.zip -o marker.zip
unzip marker.zip
mv marker-master marker
rm marker.zip

cd marker

if [[ ! -d .venv ]]; then
  python -m venv .venv
fi

source .venv/bin/activate
pip install toml
pip install --no-cache-dir $(python ../scripts/print-pip-requirements.py)