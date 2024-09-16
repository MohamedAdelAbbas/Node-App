FROM node:18

WORKDIR /app

COPY package.json .

ARG NODE_ENV
RUN if [ "$NODE_ENV" = "Production"];\
        then npm install --only=Production;\
        else npm install; \
        fi

COPY . .

EXPOSE 4000

CMD [ "npm", "run","start-dev" ]

