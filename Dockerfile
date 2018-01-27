FROM ubuntu:16.04

RUN apt-get update
RUN apt-get install -y apt-utils curl
RUN curl -sL https://deb.nodesource.com/setup_9.x | bash -

# install node 9.4 and gulp
RUN apt-get install -y nodejs && npm install --global gulp-cli
