#!/bin/bash

# Define your image name and version
IMAGE_NAME="aficiomaquinas/ollama-salad"
VERSION="1.0.0"

# Build and push the Docker image with the version tag for specified platforms
docker buildx build --platform linux/amd64,linux/arm64 -t $IMAGE_NAME:$VERSION . --push
