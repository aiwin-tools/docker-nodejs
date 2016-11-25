docker-nodejs
================

[Docker](https://www.docker.com/) image of [Nodejs](https://nodejs.org) with necessary tools for build our projects

This image adds several tools used by our integration and deployment processes, like jq, curl, etc

Usage
--------------

    docker run -it --rm --name my-running-script -v "$PWD":/usr/src/app -w /usr/src/app aiwin/nodejs-base:latest node your-daemon-or-script.js


Build
--------------

Run `build.sh` script to build and push the image to default location

    aiwin/nodejs-base:latest

If you want to build and push the image to diferent location, define the following
variables before the execution of the script:

- REPOSITORY. Docker repository
- REGISTRY. Docker registry
- TAG. Tag or version
