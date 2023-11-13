FROM node:19 as build

ENV NODE_ENV=development 


WORKDIR /app

COPY ["package.json","package-lock.json", "./"]

RUN yarn
COPY . .

EXPOSE 3000
EXPOSE 24678