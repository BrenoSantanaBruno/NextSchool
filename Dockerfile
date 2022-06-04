FROM node:12-alpine

MAINTAINER Breno Santana | DevStorm.io


WORKDIR /app

COPY package*.json ./

USER node

RUN npm install

COPY node .

EXPOSE 80

CMD [ "node", "app.js" ]