#!/usr/bin/env bash

if [[ ! -d ./marker ]]; then
  git clone --depth 1 https://github.com/VikParuchuri/marker.git
  else
  git -C marker pull
fi

docker build -t huodon/pdf-marker .

docker push huodon/pdf-marker