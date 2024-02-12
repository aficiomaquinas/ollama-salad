#!/bin/bash

# Define your image name and version
IMAGE_NAME="aficiomaquinas/ollama-salad"
VERSION="1.0.0"

# Push the image with the version tag to the Docker registry
docker push $IMAGE_NAME:$VERSION
