##FROM centos:7
##RUN yum -y update 
##RUN yum -y install epel-release
##RUN yum -y install nodejs
FROM node:9-slim

WORKDIR /work
## We copy our package.json file to our
## app directory
copy package*.json /work
## We then run npm install to install
RUN npm install
## We then copy the rest of our application
## to the app direcoty
COPY . /work
## We start our application by calling
## npm start.
CMD ["node", "app.js"]