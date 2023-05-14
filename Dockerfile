FROM alpine:3.18.0
WORKDIR /bot
ENV DOCKER_SECRETS=true
RUN apk update && apk add --update nodejs npm git  \
    && git clone https://github.com/allanpereira99/GeniusHelperBot.git . \
    && npm install 
RUN npm run build
CMD [ "npm","run","start" ]