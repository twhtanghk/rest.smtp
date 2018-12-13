FROM node

ENV APP=/usr/src/app/backend
ADD . $APP

WORKDIR $APP

RUN yarn install

CMD npm start
