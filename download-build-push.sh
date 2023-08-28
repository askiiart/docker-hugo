#!/usr/bin/env sh
ORG=askiiart
NAME=hugo
PUSH=yes

curl -s https://api.github.com/repos/sass/dart-sass/releases/latest | grep "browser_download_url.*dart-sass-.*-linux-x64.tar.gz" | cut -d : -f 2,3 | tr -d \" | wget -qi -
curl -s https://api.github.com/repos/gohugoio/hugo/releases/latest | grep "browser_download_url.*hugo_.*_linux-amd64.tar.gz" | head --lines 1 | cut -d : -f 2,3 | tr -d \" | wget -qi -

tar -xzf dart-sass-*.tar.gz
tar -xzf hugo_*_linux-amd64.tar.gz --one-top-level

VERSION=$(find . -name "hugo_*_linux-amd64" | sed 's/.*_\(.*\)_.*/\1/')
ID=$(docker build . -q)

if PUSH=yes; then
    echo hi
    exit
fi

docker tag ${ID} ${ORG}/${NAME}:latest
docker tag ${ID} ${ORG}/${NAME}:v${VERSION}
docker push ${ORG}/${NAME}:latest
docker push ${ORG}/${NAME}:v${VERSION}

