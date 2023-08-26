FROM golang:alpine3.18
WORKDIR /data
COPY dart-sass/* /bin
RUN apk add git
COPY hugo*/hugo /bin