# base image
FROM node:18

# working directory of container 
WORKDIR /usr/src/app

# install dependencies and copy all files 
copy package*.json ./
RUN npm install

COPY . .

EXPOSE 3000

CMD["node", "app.js"]


