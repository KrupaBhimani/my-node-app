FROM node:16-alpine

WORKDIR /practical

COPY ["package.json", "package-lock.json*","./"]

ENV ENV_NODE=production

RUN npm install -g npm@latest

RUN npm install pm2 -g

RUN npm install

COPY . . 

EXPOSE 3000

ENTRYPOINT [ "pm2-runtime", "server.js" ]
