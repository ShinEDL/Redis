#!/bin/bash

# 定义环境变量
IMAGE_NAME="foreveross/redis-trib"
CONTAINER_NAME="redis-trib"

docker rm -f $CONTAINER_NAME

docker build -t $IMAGE_NAME .

docker run -d --name=$CONTAINER_NAME \
	--env-file ./env.list \
	$IMAGE_NAME \
	/usr/local/redis/src/redis-trib.rb create --replicas 1 \
	REDIS1 REDIS2 REDIS3 \
	REDIS4 REDIS5 REDIS6
