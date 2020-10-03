# http://www.devoxx4kidsth.de landing page

This is the repository for the landing page of http://www.devoxx4kidsth.de.
It combines multiple microservices at once

## docker setup

* build image

```console
> docker build -t agrohmann/devoxx4kidsth-frontend .
```

* start container

```console
> docker run -it -p 80:80 --rm --name dockerize-devoxx4kidsth-frontend-1 agrohmann/devoxx4kidsth-frontend
```

## development tutorial

### preconditions

* installed [homebrew](https://brew.sh/index_de)

### development setup

* install npm

```console
> brew install npm
```

* install vue.js cli

```console
> npm install --global vue-cli
```

* init app

```console
> vue init webpack vue_app
```

* install all app libraries

```console
> cd vue_app
> npm install
```
