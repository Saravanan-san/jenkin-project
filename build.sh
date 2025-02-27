#!/bin/bash

# Variables
IMAGE_NAME="saravanan141297/react-app"
TAG="latest"

# Build Docker Image
echo "Building Docker Image..."
docker build -t $IMAGE_NAME:$TAG .

# Push Image to Docker Hub
echo "Pushing Image to Docker Hub..."
docker push $IMAGE_NAME:$TAG

echo "Docker Image Built and Pushed Successfully!"
