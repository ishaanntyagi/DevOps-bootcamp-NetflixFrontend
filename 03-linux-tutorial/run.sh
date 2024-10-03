#!/bin/bash
set -e

IMAGE_NAME="linux-tutorial"

docker build -t $IMAGE_NAME .
docker run $IMAGE_NAME