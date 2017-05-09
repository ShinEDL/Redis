#!/bin/bash

mkdir -p $PWD/data

docker rm -f ab-redis-5

docker run -d --restart=on-failure:5 -p 7005:7005 -v $PWD/redis.conf:/usr/local/etc/redis/redis.conf -v $PWD/data:/data --name ab-redis-5 redis /usr/local/etc/redis/redis.conf
