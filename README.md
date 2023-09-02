# docker-hugo

[![Build Status](https://drone.askiiart.net/api/badges/askiiart/docker-hugo/status.svg)](https://drone.askiiart.net/askiiart/docker-hugo)

Hugo in a Docker container

## Running

Example `docker run`:

```bash
docker run -v /path/to/site:/data docker.askiiart.net/askiiart/hugo hugo version
```

Example `docker-compose.yml`:

```yaml
version: '3.7'
services:
  hugo:
    image: docker.askiiart.net/askiiart/hugo
    volumes:
      - /path/to/site:/data
    command: hugo version
```

## Building

### Manually

1. Download Dart Sass (linux-x64) from [here](https://github.com/sass/dart-sass/releases/latest), and extract it with `tar -xzf dart-sass-*.tar.gz`
2. Download Hugo from (linux-amd64) from [here](https://github.com/gohugoio/hugo/releases/latest) and extract it with `tar -xzf hugo_*_linux-amd64.tar.gz --one-top-level`
3. Run `docker build .`

### Automatically

1. Edit and run `./download-build-push.sh`
