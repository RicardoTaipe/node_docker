FROM node:10-alpine

RUN mkdir -p /home/node/node_docker/node_modules && chown -R node:node /home/node/node_docker

WORKDIR /home/node/node_docker

COPY package*.json ./

USER node

RUN npm install

COPY --chown=node:node . .

EXPOSE 8080

CMD [ "node", "index.js" ]
