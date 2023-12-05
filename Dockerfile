FROM huodon/cuda-devel:12.2.2

USER sa
WORKDIR /workspace

COPY pkgx.yaml .
COPY ./scripts ./

COPY ./marker ./

RUN sudo apt-get update -y; \
  sudo apt-get install -y \
    libtesseract-dev \
    libmagic1; \
  sudo rm -rf /var/lib/apt/lists/*

RUN ./scripts/install.sh

WORKDIR /workspace/marker
ENV TESSDATA_PREFIX=/workspace/data/tessdata
CMD python convert.py \
  /workspace/data/input  \
  /workspace/data/output  \
  --workers 10 \
  --max 10 \
  --metadata_file /workspace/data/metadata.json \
  --min_length 10000