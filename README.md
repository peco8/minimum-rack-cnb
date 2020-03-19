# minimum-rack-cnb [![Build](https://github.com/peco8/minimum-rack-cnb/workflows/Build/badge.svg)](https://github.com/peco8/minimum-rack-cnb/actions?query=workflow%3ABuild)

This repository contains instruction how to build image without Dockerfile (a bare minimum Rack app) using [Cloud Native Buildpack](https://buildpacks.io/).

## Getting started

### Usage

This buildpack is currently intended to be used with the heroku builder [heroku/pack:18](https://github.com/heroku/pack-images) via [`pack`](https://github.com/buildpacks/pack).

#### Locally

##### Build your app
```sh
git clone git@github.com:peco8/minimum-rack-cnb.git
cd minimum-rack-cnb
pack build my-app \
     --builder heroku/buildpacks:18
     --path .
```

##### Quick test
```sh
docker run --rm -e PORT=8080 -p 8080:8080 my-app
curl -s http://0.0.0.0:8080
```

#### GithubActions (CI)

Container images should be built in CI environment, not local.
In this repo, we already have CI environment using GithubActions.

##### Push and Build
```sh
Fork and clone this repo locally
cd minimum-rack-cnb
git commit --allow-empty
git push origin master
```

##### Pull
```sh
docker pull docker.pkg.github.com/<USERNAME>/minimum-rack-cnb/sample:latest
```

##### Quick test
```sh
docker run --rm -e PORT=8080 -p 8080:8080 docker.pkg.github.com/<USERNAME>/minimum-rack-cnb/sample
```
