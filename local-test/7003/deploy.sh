#!/bin/bash

mkdir -p $PWD/data

docker rm -f ab-redis-3

docker run -d --restart=on-failure:5 -p 7003:7003 -v $PWD/redis.conf:/usr/local/etc/redis/redis.conf -v $PWD/data:/data --name ab-redis-3 redis /usr/local/etc/redis/redis.conf
