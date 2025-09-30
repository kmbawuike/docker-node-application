# pull node js from docker hub
FROM node:20-alpine

# set environment variables
ENV MONGO_DB_USERNAME=admin \
  MONGO_DB_PWD=password

#create folder for the application
RUN mkdir -p /home/app

#copy application files
COPY ./app /home/app

#set work directory of the container
WORKDIR /home/app

#install application packages
RUN npm install

# run command after application builds and starts
CMD ["node", "server.js"]