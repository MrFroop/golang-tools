FROM golang:1.9.1-alpine3.6

LABEL maintainer="mrfroop <fredrik@jambren.com>"

WORKDIR $GOPATH

RUN go get -u gopkg.in/alecthomas/gometalinter \
       && gometalinter --install
