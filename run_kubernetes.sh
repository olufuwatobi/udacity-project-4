#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=olutobi/udacity-project-four:latest

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run udacity-project-four --port=80 --image=$dockerpath  

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward udacity-project-four-5c65fb9fd6-qwccx 8000:80