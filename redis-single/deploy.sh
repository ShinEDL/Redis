#!/bin/bash

mkdir -p $PWD/data

docker rm -f ab-redis

docker run -d --restart=on-failure:5 -p 6379:6379 -v $PWD/redis.conf:/usr/local/etc/redis/redis.conf -v $PWD/data:/data --name ab-redis redis /usr/local/etc/redis/redis.conf
