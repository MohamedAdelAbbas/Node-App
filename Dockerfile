FROM node:18 as base


FROM base as development 
WORKDIR /app
COPY package.json .
RUN npm install
COPY . .
EXPOSE 4000
CMD [ "npm", "run","start-dev" ]

FROM base as Production 
WORKDIR /app
COPY package.json .
RUN npm install --only=Production
COPY . .
EXPOSE 4000
CMD [ "npm", "start" ]

