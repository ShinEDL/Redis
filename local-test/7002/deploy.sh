#!/bin/bash

mkdir -p $PWD/data

docker rm -f ab-redis-2

docker run -d --restart=on-failure:5 -p 7002:7002 -v $PWD/redis.conf:/usr/local/etc/redis/redis.conf -v $PWD/data:/data --name ab-redis-2 redis /usr/local/etc/redis/redis.conf
