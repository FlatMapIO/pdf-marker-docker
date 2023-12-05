#!/usr/bin/env bash
eval "$(pkgx --shellcode)"

env +aria2.github.io
# ====================================================
# script
# ====================================================

aria2c -c -i ./data/tessdata/urls.txt -d ./data/tessdata