#!/usr/bin/env bash

# Usage (from root of project): sh ./Docker/docker-build-push.sh

# docker build -f Docker/Dockerfile_base --no-cache -t garystafford/storefront-base:3.0.0 .

./gradlew clean build
docker build -f Docker/Dockerfile --no-cache -t garystafford/storefront-orders:3.0.0 .
docker push garystafford/storefront-orders:3.0.0

# docker run --name storefront-accounts -d garystafford/storefront-orders:3.0.0
