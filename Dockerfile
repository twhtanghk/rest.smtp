FROM node

ENV APP=/usr/src/app
ADD . $APP

WORKDIR $APP/backend

RUN yarn install

CMD npm start
