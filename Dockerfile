FROM node:10-alpine

ENV HTTP_PORT=8080
ENV HTTPS_PORT=8443
ENV WEBSOCKET_PORT=9443


WORKDIR simple-sonoff-server
ADD ./ ./

RUN npm install 
VOLUME /config
CMD node sonoff.server.js
