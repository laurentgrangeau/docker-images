FROM alpine:3.4

RUN apk update && apk upgrade
WORKDIR /tmp
ADD https://releases.hashicorp.com/terraform/0.7.0/terraform_0.7.0_linux_amd64.zip .
ADD https://releases.hashicorp.com/vault/0.6.0/vault_0.6.0_linux_amd64.zip .
ADD https://releases.hashicorp.com/packer/0.10.1/packer_0.10.1_linux_amd64.zip .
RUN unzip terraform_0.7.0_linux_amd64.zip && unzip vault_0.6.0_linux_amd64.zip && unzip packer_0.10.1_linux_amd64.zip
RUN mv packer /usr/bin && mv vault /usr/bin && mv terraform /usr/bin
RUN rm terraform_0.7.0_linux_amd64.zip && rm vault_0.6.0_linux_amd64.zip && rm packer_0.10.1_linux_amd64.zip
WORKDIR /
