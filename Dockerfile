FROM node:latest

WORKDIR /usr/src/app

COPY . .

RUN yarn install

RUN yarn build

COPY ./dist .

EXPOSE 3000

CMD ["node","app.js"]
