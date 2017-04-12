FROM node:6.10
LABEL maintainer "nodejs@netguru.co"

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY . /usr/src/app

RUN yarn global add swagger sequelize-cli
RUN yarn install
RUN sequelize db:migrate

EXPOSE 10010

CMD ["yarn", "start"]
