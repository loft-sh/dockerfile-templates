FROM node:8.11.4-alpine

RUN mkdir /app
WORKDIR /app

COPY package.json .
RUN npm install

COPY . /app

CMD ["npm", "start"]
