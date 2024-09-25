#!/bin/bash

cd /Storage/Media/Downloads/Containers

# Pull the latest images
docker-compose pull

# Restart the containers
docker-compose up -d

# Remove all unused images
docker image prune -f
