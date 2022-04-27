#!/bin/bash

echo removing all containers
docker rm $(docker ps -qa)


echo removeing all images
docker rmi $(docker images -qa)


PIP_PARAM_STR="pip install -U --no-cache-dir"

PIP_PARAM=`[[ "$(uname)" = "Darwin" ]] && echo ${PIP_PARAM_STR} || echo "${PIP_PARAM_STR} --no-use-pep517"`

echo "$PIP_PARAM"

echo "build docker"
docker build --build-arg PIP_PARAM="$PIP_PARAM" -t hell  .

echo "run docker"

docker run hell


echo log into shell

# docker exec -it $(docker ps -aq) sh