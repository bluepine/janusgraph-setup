#!/bin/bash
set -x
bash ./stop.sh
bash ./build.sh
docker network rm janus
docker network create --driver bridge janus
docker run --rm -d --network=janus --name cassandra local:cassandra
docker run --rm -d --network=janus --name elasticsearch local:elasticsearch
docker run --rm -d --network=janus --name janusgraph local:janusgraph
docker network inspect janus
docker images; docker ps
