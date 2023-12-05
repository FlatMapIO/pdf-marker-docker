FROM huodon/cuda-devel:12.2.2

USER sa
WORKDIR /workspace

COPY pkgx.yaml .
COPY ./scripts ./scripts
COPY ./marker ./marker

RUN sudo apt-get update -y; \
  sudo apt-get install -y \
    libtesseract-dev \
    libmagic1; \
  sudo rm -rf /var/lib/apt/lists/*

RUN bash ./scripts/install.sh

WORKDIR /workspace/marker

ENV TESSDATA_PREFIX=/workspace/data/tessdata

CMD /workspace/scripts/entrypoint.sh