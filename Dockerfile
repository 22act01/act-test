FROM node:14.17-alpine

WORKDIR /usr/src/app
COPY ["package.json", "package-lock.json", "./"]
RUN npm install
COPY . .
ENTRYPOINT [ "npm", "start" ]