FROM node:12.17.0-alpine3.11

COPY package.json .
RUN npm install
COPY . .

RUN npm run build
RUN npm run transpile

CMD PORT=$PORT npm run start:prod