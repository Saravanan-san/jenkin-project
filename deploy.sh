#!/bin/bash

# Variables
IMAGE_NAME="saravanan141297/react-app"
TAG="latest"
CONTAINER_NAME="react-app"

# Pull Latest Image
echo "Pulling latest image from Docker Hub..."
docker pull $IMAGE_NAME:$TAG

# Stop and Remove Existing Container (if running)
echo "Stopping existing container..."
docker stop $CONTAINER_NAME 2>/dev/null
docker rm $CONTAINER_NAME 2>/dev/null

# Run New Container
echo "Deploying new container..."
docker run -d --name $CONTAINER_NAME -p 80:80 $IMAGE_NAME:$TAG

# Verify Deployment
echo "Deployment Completed! Running Containers:"
docker ps

