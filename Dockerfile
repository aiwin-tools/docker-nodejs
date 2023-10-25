FROM node:lts-alpine

RUN apt-get update \
    && apt-get install -y jq zip \
    && rm -rf /var/lib/apt/lists/*

RUN apk update && apk add --no-cache aws-cli

CMD [ "node" ]