#!/bin/bash
set -x
bash ./stop.sh
docker pull bluepine/bigdata-alpine-base
bash ./build.sh
docker network rm janus
docker network create --driver bridge janus
docker run --rm -d --network=janus --name cassandra -v ~/tmp:/mnt/host local:cassandra
docker run --rm -d --network=janus --name elasticsearch -v ~/tmp:/mnt/host local:elasticsearch
docker run --rm -d --network=janus --name janusgraph -v ~/tmp:/mnt/host local:janusgraph
docker network inspect janus
docker images; docker ps
