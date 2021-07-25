FROM node:12.18.1

WORKDIR /app

COPY package.json package.json
COPY package-lock.json package-lock.json

RUN npm install

COPY . .

ENV NODE_PORT=8080

EXPOSE $NODE_PORT

CMD [ "node", "index.js" ]
