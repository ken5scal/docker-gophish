FROM golang:latest
MAINTAINER Kengo Suzuki <kengoscal@gmail.coim>

RUN go get github.com/gophish/gophish
WORKDIR $GOPATH/src/github.com/gophish/gophish
ADD config.json .
RUN go build

EXPOSE 3333 80
CMD ["./gophish"]
