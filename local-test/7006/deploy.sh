#!/bin/bash

mkdir -p $PWD/data

docker rm -f ab-redis-6

docker run -d --restart=on-failure:5 -p 7006:7006 -v $PWD/redis.conf:/usr/local/etc/redis/redis.conf -v $PWD/data:/data --name ab-redis-6 redis /usr/local/etc/redis/redis.conf
