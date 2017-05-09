#!/bin/bash

mkdir -p $PWD/data

docker rm -f ab-redis

docker run -d --restart=on-failure:5 --net=host -v $PWD/redis.conf:/usr/local/etc/redis/redis.conf -v $PWD/data:/data --name ab-redis-4 redis /usr/local/etc/redis/redis.conf
