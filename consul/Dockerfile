FROM google/golang

RUN go get --ldflags '-extldflags "-static"' -v github.com/hashicorp/consul

FROM scratch

ENTRYPOINT['']
