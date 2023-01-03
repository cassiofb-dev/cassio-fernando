# syntax = docker/dockerfile:1

FROM klakegg/hugo:ext-alpine

RUN apk update && apk upgrade && apk add git

WORKDIR /cassiofernando

COPY . .

RUN git config --global --add safe.directory /cassiofernando
