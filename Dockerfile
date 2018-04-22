# this image is for doing development on this project i.e.
# run ./rundevenv which would build and run this image in
# interactive mode.  From there

FROM ubuntu:16.04

RUN apt-get update
RUN apt-get install -y apt-utils curl jq
RUN curl -sL https://deb.nodesource.com/setup_9.x | bash -

# install node 9.4 and gulp
RUN apt-get install -y nodejs && npm install --global gulp-cli
# install kubectl so we can interact with kubernetes on host (Docker for mac with Kubernetes)
RUN    cd /tmp \
    && curl -LO https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl \
    && chmod +x ./kubectl
    && mv ./kubectl /usr/local/bin/kubectl
