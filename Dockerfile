
FROM node:boron-alpine
MAINTAINER thomas@malt.no

RUN mkdir -p /usr/lib/power
WORKDIR /usr/lib/power

COPY package.json /usr/lib/power
RUN npm install

ENV NODE_ENV=production

CMD ./node_modules/.bin/power-meter-updater

