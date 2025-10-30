# base image
FROM node:18

# working directory of container 
WORKDIR /usr/src/app

# install dependencies and copy all files 
COPY package*.json ./
RUN npm ci

COPY . .

EXPOSE 3000

CMD ["npm", "start"]


