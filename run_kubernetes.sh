#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath=vosr17/udacity_project4 
# Step 2
# Run the Docker Hub container with kubernetes
kubectl run udacity-project --image=vosr17/udacity_project4 --port=80

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host#!/usr/bin/env bash
echo "waiting to create the pod"
sleep 20
kubectl port-forward udacity-project 5000:80
