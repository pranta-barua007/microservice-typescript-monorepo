FROM node:lts-alpine

WORKDIR /app
ENV JWT_KEY=kjjfdsljdsf

RUN npm install --global lerna 

COPY package.json lerna.json ./

COPY packages/auth ./packages/auth
COPY packages/common ./packages/common

RUN npm install --only=prod

RUN cd packages/common && npm run build

CMD cd packages/auth && npm start