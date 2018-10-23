FROM node:8.11.4

RUN mkdir /app
WORKDIR /app

COPY package.json .
RUN npm install

COPY . .

PORT 3000

CMD ["npm", "start"]
