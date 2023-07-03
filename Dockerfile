FROM node:18.16.1
WORKDIR /hello-word
COPY ./package.json /hello-word/
COPY ./yarn.lock /hello-word/

RUN yarn install

COPY . /hello-word/

CMD yarn serve