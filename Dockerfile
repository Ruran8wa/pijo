FROM node:current-alpine

LABEL org.opencontainers.image.title="Pijo"
LABEL org.opencontainers.image.description="Hello Oceans!"
LABEL org.opencontainers.image.authors="ruran8wa"

RUN mkdir -p /usr/src/app

COPY . /usr/src/app

WORKDIR /usr/src/app

RUN npm install -g pnpm
RUN pnpm install

ENTRYPOINT ["pnpm", "run", "dev"]
