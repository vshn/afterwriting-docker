FROM node:16.3.0-alpine3.11 AS builder

RUN apk add git

# Install app dependencies
WORKDIR /command
COPY ["package.json", "package-lock.json", "./"]
RUN npm install

ENTRYPOINT [ "/command/node_modules/.bin/afterwriting" ]

