FROM ubuntu:15.10

RUN apt-get update && apt-get -yy install python-twisted unzip
RUN wget http://dwarfpool.com/static/eth-proxy.zip
RUN unzip eth-proxy.zip

WORKDIR eth-proxy/
ADD . eth-proxy.conf

CMD python ./eth-proxy.py
