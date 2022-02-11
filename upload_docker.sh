#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
path=my-capstone-site:1.0
dockerpath="alexcgdocker/$path"

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login --username alexcgdocker
docker tag $path $dockerpath
# Step 3:
# Push image to a docker repository
docker push $dockerpath
