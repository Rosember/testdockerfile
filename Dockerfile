FROM centos:7
RUN yum -y update 
RUN yum -y install epel-release
RUN yum -y install nodejs
WORKDIR /app
COPY package.json /app
RUN npm install
COPY . /app
EXPOSE 3000
CMD ["node", "app.js"]