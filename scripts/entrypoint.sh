#!/usr/bin/env bash
eval "$(pkgx --shellcode)"


python convert.py \
  /workspace/data/input  \
  /workspace/data/output  \
  --workers 10 \
  --max 10 \
  --metadata_file /workspace/data/metadata.json \
  --min_length 10000
