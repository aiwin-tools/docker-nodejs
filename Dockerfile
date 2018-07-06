FROM node:8

RUN apt-get update && apt-get install -y jq zip python python-pip libpython-dev groff uuid-runtime gettext

RUN pip install -U pip setuptools && \
    pip install awscli --ignore-installed six && \
    pip install aws-sam-cli
