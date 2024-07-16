#! /bin/bash
#export DOCKER_CLI_EXPERIMENTAL=enabled
#docker buildx create --use
#docker buildx inspect --bootstrap
docker buildx  build  --platform linux/amd64,linux/arm64  -t caternberg/curl-yq-jq-git:1.3 --push .
#docker buildx build --platform linux/amd64,linux/arm64 -t yq-envsubst:latest .
