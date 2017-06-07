FROM ubuntu:wily

# Update Ubuntu
RUN apt-get -yy update && apt-get -yy upgrade && apt-get install -yy curl python-pip

# GCloud CLI
RUN mkdir -p /usr/local/gcloud
WORKDIR /usr/local/gcloud
ADD https://dl.google.com/dl/cloudsdk/release/google-cloud-sdk.tar.gz /usr/local/gcloud
RUN tar -C /usr/local/gcloud -xvf google-cloud-sdk.tar.gz
RUN /usr/local/gcloud/google-cloud-sdk/install.sh

# Docker
RUN apt-get -yy update && apt-get -yy upgrade
RUN apt-get install -yy docker

# AWS CLI
RUN pip install awscli

# Docker-machine
RUN curl -L https://github.com/docker/machine/releases/download/v0.12.0/docker-machine-`uname -s`-`uname -m` >/tmp/docker-machine && chmod +x /tmp/docker-machine && sudo cp /tmp/docker-machine /usr/local/bin/docker-machine

# Azure CLI
RUN curl -L https://aka.ms/InstallAzureCli | bash
