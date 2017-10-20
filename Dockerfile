FROM golang:1.9.1-alpine3.6

LABEL maintainer="mrfroop <fredrik@jambren.com>"

WORKDIR $GOPATH

RUN apk --no-cache add \
	git

RUN go get -u github.com/alecthomas/gometalinter \
       && gometalinter --install

ENV PATH $PATH:$GOPATH/bin
