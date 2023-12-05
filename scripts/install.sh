#!/usr/bin/env bash
eval "$(pkgx --shellcode)"

# ====================================================
# script
# ====================================================

python -m venv .venv
source .venv/bin/activate

pip install --no-cache-dir \
  scikit-learn \
  Pillow \
  pytesseract \
  PyMuPDF \
  pymupdf-fonts \
  pydantic \
  pydantic-settings \
  nougat-ocr \
  transformers \
  numpy \
  python-dotenv \
  torch \
  ray \
  tqdm \
  tabulate \
  thefuzz \
  python \
  pyspellchecker \
  ftfy \
  nltk \
  ocrmypdf \
  bitsandbytes
