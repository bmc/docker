#!/usr/bin/env bash
#
# Convenient script to build the image.
#
# Usage: ./build.sh [tag]
#
# where <tag> is "latest", "snapshot", whatever. Defaults to "latest".

case "$#" in
  0)
    tag=latest
    ;;
  1)
    tag=$1
    ;;
  *)
    echo "Usage: $0 [tag]" >&2
    exit 1
    ;;
esac

docker build --no-cache -t bclapper/rclone:latest .
