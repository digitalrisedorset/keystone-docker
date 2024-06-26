FROM node:18-alpine

WORKDIR /user/src/keystone

COPY package.json .
COPY keystone.ts .

RUN yarn add @keystone-6/core && \
    yarn add typescript

RUN yarn build
RUN yarn keystone prisma db push

EXPOSE 3000

CMD ["yarn", "start"]
