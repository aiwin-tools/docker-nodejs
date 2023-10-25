FROM node:lts-alpine

RUN apk update && apk add --no-cache aws-cli jq zip bash

CMD [ "node" ]