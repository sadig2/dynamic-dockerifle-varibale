#!/bin/bash

echo removing all containers
docker rm $(docker ps -qa)


echo removeing all images
docker rmi $(docker images -qa)


param=`[[ "$(uname)" = "Darwin" ]] && echo "pip install -U --no-cache-dir" || echo "pip install -U --no-cache-dir --no-use-pep517"`

echo "$param"

echo "build docker"
docker build --build-arg OO="$param" -t hell  .

echo "run docker"

docker run hell


echo log into shell

# docker exec -it $(docker ps -aq) sh