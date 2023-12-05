#!/usr/bin/env bash
eval "$(pkgx --shellcode)"
dev

# ====================================================
# script
# ====================================================

aria2c https://github.com/VikParuchuri/marker/archive/refs/heads/master.zip -o marker.zip
unzip marker.zip
mv marker-master marker

cd marker

poetry install

poetry cache clear PyPI --all

# if [[ ! -d .venv ]]; then
#   python -m venv .venv
# fi

# source .venv/bin/activate

# pip install --no-cache-dir \
#   scikit-learn \
#   Pillow \
#   pytesseract \
#   PyMuPDF \
#   pymupdf-fonts \
#   pydantic \
#   pydantic-settings \
#   nougat-ocr \
#   transformers \
#   numpy \
#   python-dotenv \
#   torch \
#   ray \
#   tqdm \
#   tabulate \
#   thefuzz \
#   python-magic \
#   pyspellchecker \
#   ftfy \
#   nltk \
#   ocrmypdf \
#   bitsandbytes
