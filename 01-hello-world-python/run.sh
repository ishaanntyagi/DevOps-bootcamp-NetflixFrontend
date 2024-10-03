#!/bin/bash
set -e

DOCKERFILE="Dockerfile"
IMAGE_NAME="hello-world"

docker build -t "${IMAGE_NAME}" -f "$DOCKERFILE" .
docker run "${IMAGE_NAME}"