#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
dockerpath=vosr17/udacity_project4 

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
export DOCKER_ID_USER="vosr17"
docker login
docker tag vosr17/udacity_project4 $DOCKER_ID_USER/udacity_project4 

# Step 3:
# Push image to a docker repository
docker push $DOCKER_ID_USER/udacity_project4 
