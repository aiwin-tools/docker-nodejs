FROM node:4-stretch

RUN apt-get update \
    && apt-get install -y jq zip git python python-pip libpython-dev groff uuid-runtime \
    && rm -rf /var/lib/apt/lists/*

COPY --from=amazon/aws-cli /usr/local /usr/local

RUN git clone https://github.com/aiwin-tools/devops-scripts.git "$HOME/scripts"

RUN npm install -g npm@5.10.0

CMD [ "node" ]