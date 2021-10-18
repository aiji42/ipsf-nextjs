FROM golang:latest

RUN mkdir /go/src/work
RUN wget https://dist.ipfs.io/go-ipfs/v0.10.0/go-ipfs_v0.10.0_linux-amd64.tar.gz
RUN tar xvzf go-ipfs_v0.10.0_linux-amd64.tar.gz
RUN sh go-ipfs/install.sh
RUN ipfs init

WORKDIR /go/src/work
EXPOSE 4001
EXPOSE 4001/udp
EXPOSE 5001
EXPOSE 8080
EXPOSE 8081

ADD . /go/src/work
