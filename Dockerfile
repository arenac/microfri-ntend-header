FROM node:lts-alpine3.11

RUN apk update && apk upgrade

COPY package.json .
RUN npm install
COPY . .

RUN npm run build
RUN npm run transpile

CMD PORT=$PORT npm run start:prod