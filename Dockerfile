FROM alpine:3.4
MAINTAINER yazpik@gmail.com
RUN apk --no-cache add bash go bzr git mercurial subversion openssh-client ca-certificates
RUN mkdir -p /go/src /go/bin && chmod -R 777 /go
ENV GOPATH /go
ENV PATH /go/bin:$PATH
WORKDIR /go
EXPOSE 8888
CMD ["go-wrapper", "run", "-version=1.5"]
#FROM golang:onbuild
#FROM blang/golang-alpine
#EXPOSE 8888
