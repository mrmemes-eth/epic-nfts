FROM node:16

WORKDIR /usr/src/app

# copy over just the package so this layer stays cached unless deps change
COPY package*.json ./
RUN npm install

# now copy over the app's source
COPY . .
