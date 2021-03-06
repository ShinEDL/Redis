#!/bin/bash

mkdir -p $PWD/data

docker rm -f ab-redis-1

docker run -d --restart=on-failure:5 -p 7001:7001 -v $PWD/redis.conf:/usr/local/etc/redis/redis.conf -v $PWD/data:/data --name ab-redis-1 redis /usr/local/etc/redis/redis.conf
