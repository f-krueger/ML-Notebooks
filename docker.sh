#!/bin/bash


if [ ! -f "Data/w2v.bin.gz" ]; then
    wget https://s3.amazonaws.com/dl4j-distribution/GoogleNews-vectors-negative300.bin.gz -O Data/w2v.bin.gz
fi

docker build -t frankkrueger/datascience ./docker

docker run --rm --name datascience \
    -p 127.0.0.1:8000:8888 \
    -v "$PWD/.":/home/jovyan/work \
    --user root \
    -e NB_UID=$(id -u) \
    -e NB_GID=$(id -g) \
    frankkrueger/datascience

