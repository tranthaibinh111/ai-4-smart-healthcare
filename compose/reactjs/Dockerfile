FROM node:14.18.1

ARG DEBUG
ENV DEBUG $DEBUG

RUN apt-get update
RUN apt-get install xsel

ADD ./compose/reactjs/start.sh /
RUN sed -i 's/\r//' start.sh
RUN chmod +x start.sh

ADD ./front-end /app
WORKDIR /app

RUN rm -r -f build
RUN yarn install
RUN if [ "$DEBUG" = "false" ]; \
then \
    yarn global add serve; \
fi
ENV PATH /app/node_modules/.bin:$PATH
