#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>

dockerpath=kangster7/project4


# Step 2
# Run the Docker Hub container with kubernetes

kubectl create deployment udacityproject4 --image=$dockerpath

# Step 3:
# List kubernetes pods
kubectl get pods

sleep 5

# Step 4:
# Forward the container port to a host

kubectl port-forward udacityproject4-5b6dfbd48f-csskh 8000:80