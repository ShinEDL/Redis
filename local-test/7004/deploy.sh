#!/bin/bash

mkdir -p $PWD/data

docker rm -f ab-redis-4

docker run -d --restart=on-failure:5 -p 7004:7004 -v $PWD/redis.conf:/usr/local/etc/redis/redis.conf -v $PWD/data:/data --name ab-redis-4 redis /usr/local/etc/redis/redis.conf
