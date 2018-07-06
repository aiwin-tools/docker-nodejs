FROM node:8

RUN apt-get update && apt-get install -y jq zip python python-pip libpython-dev groff uuid-runtime gettext

RUN pip install -U pip setuptools && \
    pip install awscli --ignore-installed six && \
    pip install aws-sam-cli && \
    # fix https://stackoverflow.com/questions/40764894/error-pkg-resources-distributionnotfound-the-backports-functools-lru-cache
    pip install backports.functools_lru_cache
