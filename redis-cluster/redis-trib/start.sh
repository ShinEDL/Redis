#!/bin/bash

# 定义环境变量
IMAGE_NAME="foreveross/redis-trib"
CONTAINER_NAME="redis-trib"

docker rm -f $CONTAINER_NAME

docker build -t $IMAGE_NAME .

docker run -it --rm --name=$CONTAINER_NAME \
	-v $PWD/run.sh:/run.sh \
	-v $PWD/client.rb:/client.rb \
	$IMAGE_NAME \
	/bin/bash

