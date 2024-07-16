FROM node:lts-alpine3.19

ARG AJV_CLI_VERSION=latest
RUN npm install --verbose -g ajv-cli@${AJV_CLI_VERSION}

VOLUME ["/data"]
WORKDIR "/data"

ENTRYPOINT ["/usr/local/bin/ajv"]