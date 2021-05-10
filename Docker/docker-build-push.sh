#!/usr/bin/env bash

# Usage (from root of project): sh ./Docker/docker-build-push.sh

./gradlew clean build
docker build -f Docker/Dockerfile --no-cache -t garystafford/storefront-orders:gke-3.0.0 .
docker push garystafford/storefront-orders:gke-3.0.0

# docker run --name storefront-orders -d garystafford/storefront-orders:gke-3.0.0