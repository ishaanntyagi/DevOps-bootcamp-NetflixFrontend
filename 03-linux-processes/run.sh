#!/bin/bash
set -e

IMAGE_NAME="linux-processes-intro"
CONTAINER_NAME="linux-processes-intro"

function build(){
    docker build -t $IMAGE_NAME . --no-cache
}

function run(){
    # docker run -d --name $CONTAINER_NAME --entrypoint /bin/bash $IMAGE_NAME
    # docker run -d --name $CONTAINER_NAME $IMAGE_NAME
    docker run -d --name $CONTAINER_NAME --entrypoint /bin/bash $IMAGE_NAME -c "tail -f /dev/null"
}

function exec(){
    docker exec -it $CONTAINER_NAME /bin/bash
}

function stop(){
    docker stop $CONTAINER_NAME
    docker rm $CONTAINER_NAME
}

COMMAND=$1
case $COMMAND in
    "build")
        build
        ;;
    "run")
        run
        ;;
    "exec")
        exec
        ;;
    "run-exec")
        run
        exec
        ;;
    "stop")
        stop
        ;;
    *)
        echo "Usage: $0 [build|run|exec]"
        ;;
esac