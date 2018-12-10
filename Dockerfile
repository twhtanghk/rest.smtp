FROM node

ENV APP=/usr/src/app
ADD . $APP

WORKDIR $APP

RUN (cd backend; yarn install)

CMD ['sh', '-c', 'cd backend && npm start']
