FROM node:18-alpine

WORKDIR /user/src/keystone

COPY package.json .
COPY keystone.ts .

RUN yarn add @keystone-6/core && \
    yarn add typescript

EXPOSE 3000

CMD ["yarn", "dev"]
