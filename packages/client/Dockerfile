FROM node:lts-alpine

WORKDIR /app

COPY package.json lerna.json ./

COPY packages/client ./packages/client

RUN npm i

CMD cd packages/client && npm run dev