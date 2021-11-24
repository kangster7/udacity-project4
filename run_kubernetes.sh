#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>

dockerpath=kangster7/project4


# Step 2
# Run the Docker Hub container with kubernetes

kubectl run udacityproject4\
    --image=$dockerpath\
    --port=80 --labels app=udacityproject4

# Step 3:
# List kubernetes pods
kubectl get pods

sleep 5

# Step 4:
# Forward the container port to a host

kubectl port-forward udacityproject4 8000:80