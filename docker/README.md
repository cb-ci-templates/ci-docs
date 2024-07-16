This repo contains sample Jenkins Pipelines, Shared Libraries and Pipeline Template catalogs.

# Docker build

To build a custom tool container:  (f.e. `resource/dockerfiles/Dockerfile-curl-jq-yq-git` )
* Macos requires buildx
```
cd resource/dockerfiles 
docker  buildx  build   -t caternberg/curl-yq-jq-git  .
docker push caternberg/curl-yq-jq
docker push caternberg/curl-yq-jq:<TAG>
```

# Kaniko caching 

* https://stackoverflow.com/questions/72754983/kaniko-image-cache-in-jenkins-kubernetes-agents/73402039#73402039

 
