FROM alpine
#https://docs.cloudbees.com/docs/cloudbees-ci-kb/latest/cloudbees-ci-on-modern-cloud-platforms/change-the-default-jnlp-image-for-kubernetes-agents-provisioning
WORKDIR /usr/local/bin
LABEL maintainer Andreas Caternberg <andreas.caternberg@gmail.com>

ENV DOCKER_VERSION=26.0.1-ce JQ_VERSION=1.7.1

USER root
RUN apk add --no-cache make \
    ca-certificates \
    bash \
    curl \
    gettext \
    diffutils \
    jq \
    yq \
    libxml2-utils \
    git

RUN echo $PATH
