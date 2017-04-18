FROM golang:latest
MAINTAINER Kengo Suzuki <kengoscal@gmail.coim>

RUN go get github.com/gophish/gophish
WORKDIR $GOPATH/src/github.com/gophish/gophish
RUN go build

EXPOSE 3333
CMD ["./gophish"]

#RUN go build -o main .
#CMD ["/app/main"]
