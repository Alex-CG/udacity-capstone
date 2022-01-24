#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Create dockerpath
dockerpath=alexcgdocker/mlapp

# Authenticate & tag
docker login --username alexcgdocker
docker tag mlapp $dockerpath
echo "Docker ID and Image: $dockerpath"

# Push image to a docker repository
docker image push $dockerpath
