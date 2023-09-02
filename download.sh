#!/usr/bin/env sh
curl $(curl -s https://api.github.com/repos/sass/dart-sass/releases/latest | grep "browser_download_url.*dart-sass-.*-linux-x64.tar.gz" | cut -d : -f 2,3 | tr -d \") -LO
curl $(curl -s https://api.github.com/repos/gohugoio/hugo/releases/latest | grep "browser_download_url.*hugo_.*_linux-amd64.tar.gz" | head --lines 1 | cut -d : -f 2,3 | tr -d \") -LO
tar -xzf dart-sass-*.tar.gz
tar -xzf hugo_*_linux-amd64.tar.gz --one-top-level