#!/bin/bash
set -e

function up(){
    docker-compose up -d
}

function down(){
    docker-compose down
}

function logs(){
    docker-compose logs -f
}

COMMAND=$1
case $COMMAND in
    "up")
        up
        ;;
    "down")
        down
        ;;
    "logs")
        logs
        ;;
    *)
        echo "Usage: $0 [up|down|logs]"
        ;;
esac