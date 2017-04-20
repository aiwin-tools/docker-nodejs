FROM node:4.6.1

RUN apt-get update && apt-get install -y jq zip python python-pip libpython-dev groff

RUN pip install awscli --ignore-installed six
