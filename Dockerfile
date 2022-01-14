FROM node:17-alpine3.14

WORKDIR /usr/src/app
COPY ["package.json", "package-lock.json", "./"]
RUN npm install
COPY . .
ENTRYPOINT [ "npm", "start" ]