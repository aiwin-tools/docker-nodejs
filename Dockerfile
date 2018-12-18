FROM node:4.6.1

RUN apt-get update && apt-get install -y jq zip git python python-pip libpython-dev groff uuid-runtime

RUN pip install awscli --ignore-installed six

RUN git clone https://github.com/aiwin-tools/devops-scripts.git "$HOME/scripts"
