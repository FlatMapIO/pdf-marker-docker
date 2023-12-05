#!/usr/bin/env bash
eval "$(pkgx --shellcode)"

env +aria2.github.io
# ====================================================
# script
# ====================================================

aria2c -c -i ./data/tessdata/urls.txt -d ./data/tessdata

if [[ ! -d ./data/tessdata/config ]]; then
  unzip ./data/tessdata/config.zip -d ./data/tessdata
  mv  ./data/tessdata/tessconfigs-main ./data/tessdata/config
fi

if [[ ! -f ./data/tessdata/pdf.ttf ]]; then
  ln -s ./data/tessdata/config/pdf.ttf ./data/tessdata/pdf.ttf
fi