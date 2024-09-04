FROM node:18

WORKDIR /app

COPY package.json .

RUN npm install

COPY /src/index.js .

COPY . .

EXPOSE 4000

CMD [ "npm", "run","start-dev" ]

