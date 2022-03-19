FROM node:17-alpine

RUN apk add --no-cache git bash

WORKDIR /app

COPY ../../package*.json ./

RUN yarn install
