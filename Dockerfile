FROM node:18-bullseye

WORKDIR /usr/src/app

COPY package.json .
COPY package-lock.json .

RUN npm install --no-save

COPY src ./src
COPY tsconfig.json .

RUN npm run build

CMD [ "node", "./dist/index.js" ]
