FROM ubuntu:wily

RUN apt-get -yy update && apt-get -yy upgrade && apt-get install -yy curl python-pip
RUN mkdir -p /usr/local/gcloud
WORKDIR /usr/local/gcloud
ADD https://dl.google.com/dl/cloudsdk/release/google-cloud-sdk.tar.gz /usr/local/gcloud
RUN tar -C /usr/local/gcloud -xvf google-cloud-sdk.tar.gz
RUN /usr/local/gcloud/google-cloud-sdk/install.sh

RUN curl -sL https://deb.nodesource.com/setup_6.x | bash -

RUN apt-get -yy update && apt-get -yy upgrade
RUN apt-get install -yy docker nodejs

RUN pip install awscli
RUN curl -L https://github.com/docker/machine/releases/download/v0.7.0/docker-machine-`uname -s`-`uname -m` > /usr/local/bin/docker-machine && chmod +x /usr/local/bin/docker-machine

RUN npm install azure-cli -g
