#!/bin/bash

IMAGE_NAME="local-sprite-base"

# Auto-detect if sudo is needed for docker
if ! docker ps >/dev/null 2>&1; then
    DOCKER_CMD="sudo docker"
else
    DOCKER_CMD="docker"
fi

case "$1" in
  build)
    echo "Building $IMAGE_NAME..."
    $DOCKER_CMD build -t $IMAGE_NAME -f Dockerfile.sprite .
    ;;
  up)
    NAME=$2
    if [ -z "$NAME" ]; then echo "Usage: $0 up <name>"; exit 1; fi
    echo "Launching sprite: $NAME"
    # Mount current dir to /workspace inside
    $DOCKER_CMD run -d --name "$NAME" -e SPRITE_NAME="$NAME" -v "$(pwd):/workspace" $IMAGE_NAME
    ;;
  in)
    NAME=$2
    if [ -z "$NAME" ]; then echo "Usage: $0 in <name>"; exit 1; fi
    $DOCKER_CMD exec -it "$NAME" bash
    ;;
  rm)
    NAME=$2
    if [ -z "$NAME" ]; then echo "Usage: $0 rm <name>"; exit 1; fi
    $DOCKER_CMD rm -f "$NAME"
    ;;
  ls)
    $DOCKER_CMD ps --filter "ancestor=$IMAGE_NAME"
    ;;
  *)
    echo "Usage: $0 {build|up|in|rm|ls}"
    exit 1
    ;;
esac
