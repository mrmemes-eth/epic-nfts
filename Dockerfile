FROM node:16

WORKDIR /usr/src/app

COPY ["package.json", "package-lock.json*", "npm-shrinkwrap.json*", "./"]
RUN npm install && mv node_modules ../

COPY . .

EXPOSE 8080

RUN chown -R node /usr/src/app
USER node

ENTRYPOINT /bin/bash
