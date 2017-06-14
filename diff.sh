#!/bin/bash
set -x
for ci in cassandra elasticsearch janusgraph
do
    docker diff $ci
done

