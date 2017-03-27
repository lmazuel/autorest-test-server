FROM node:6
LABEL maintainer "lmazuel@microsoft.com"

RUN git clone https://github.com/Azure/autorest.git /autorest

RUN cd /autorest/src/dev/TestServer/server && npm install

WORKDIR /autorest/src/dev/TestServer/server
EXPOSE 3000

ENTRYPOINT ["node", "startup/www.js"]
