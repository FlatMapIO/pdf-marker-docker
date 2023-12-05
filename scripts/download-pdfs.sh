#!/usr/bin/env bash
eval "$(pkgx --shellcode)"

env +aria2.github.io
# ====================================================
# script
# ====================================================

aria2c -c -i ./data/input/urls.txt -d ./data/input
