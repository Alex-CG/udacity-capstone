#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# This is your Docker ID/path
# dockerpath=<>
dockerpath="alexcgdocker/mlapp"

# Run the Docker Hub container with kubernetes
kubectl run mlappdemo\
    --image=$dockerpath\
    --port=80\
    --labels app=mlappdemo

# List kubernetes pods
kubectl get pods
sleep 90s

# Forward the container port to a host
kubectl port-forward mlappdemo 8000:80
