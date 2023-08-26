#!/usr/bin/env sh
ORG=askiiart
NAME=hugo
VERSION=$(find . -name "hugo_*_linux-amd64" | sed 's/.*_\(.*\)_.*/\1/')
ID=$(docker build . -q)

docker tag ${ID} ${ORG}/${NAME}:latest
docker tag ${ID} ${ORG}/${NAME}:v${VERSION}
docker push ${ORG}/${NAME}:latest
docker push ${ORG}/${NAME}:v${VERSION}