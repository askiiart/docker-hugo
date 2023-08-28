FROM golang:alpine3.18
WORKDIR /data
COPY dart-sass/sass /bin
RUN apk add git
COPY hugo*/hugo /bin