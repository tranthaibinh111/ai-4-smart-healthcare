FROM node:14.18.1

ARG NODE_ENV
ENV NODE_ENV $NODE_ENV

ADD ./compose/reactjs/start.sh /
RUN sed -i 's/\r//' start.sh
RUN chmod +x start.sh

ADD ./front-end /app
WORKDIR /app

RUN yarn install
ENV PATH /app/node_modules/.bin:$PATH

RUN if [ "$NODE_ENV" = "production" ]; then yarn build && yarn global add serve; fi