FROM node:8.6-alpine

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY package.json ./
RUN npm install -quiet

EXPOSE 3000

COPY . .

CMD ["npm", "start"]
