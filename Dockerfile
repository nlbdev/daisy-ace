# Build Daisy ACE
FROM node:buster-slim as runtime

WORKDIR /usr/src/app

COPY package.json .
COPY yarn.lock .

RUN yarn install

COPY config.json .

EXPOSE 80

CMD ["yarn", "start"]
