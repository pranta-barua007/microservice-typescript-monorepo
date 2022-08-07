FROM node:lts-alpine

WORKDIR /app
ENV JWT_KEY=kjjfdsljdsf

COPY package.json lerna.json ./

COPY packages/auth ./packages/auth
COPY packages/common ./packages/common

RUN npm i

CMD ["cd", "services/accounts", "&&", "npm", "start"]