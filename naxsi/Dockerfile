FROM debian:8.0

MAINTAINER Laurent Grangeau <laurent.grangeau@gmail.com>

ENV NGINX_VERSION 1.7.10
ENV DEBIAN_FRONTEND=noninteractive

# Update and install minimal.
RUN apt-get update \
  && apt-get install --yes --no-install-recommends --no-install-suggests \
  wget build-essential git libssl-dev ca-certificates libpcre3 libpcre3-dev \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*

RUN wget http://nginx.org/download/nginx-${NGINX_VERSION}.tar.gz
RUN git clone https://github.com/nbs-system/naxsi.git
RUN tar xvzf nginx-${NGINX_VERSION}.tar.gz
WORKDIR nginx-${NGINX_VERSION}/
RUN ./configure --conf-path=/etc/nginx/nginx.conf --add-module=../naxsi/naxsi_src/ \
 --error-log-path=/var/log/nginx/error.log --http-client-body-temp-path=/var/lib/nginx/body \
 --http-fastcgi-temp-path=/var/lib/nginx/fastcgi --http-log-path=/var/log/nginx/access.log \
 --http-proxy-temp-path=/var/lib/nginx/proxy --lock-path=/var/lock/nginx.lock \
 --pid-path=/var/run/nginx.pid --with-http_ssl_module \
 --without-mail_pop3_module --without-mail_smtp_module \
 --without-mail_imap_module --without-http_uwsgi_module \
 --without-http_scgi_module --with-ipv6 --prefix=/usr
RUN make
RUN make install
