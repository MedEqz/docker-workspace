FROM node:latest

RUN apt-get -y update
RUN apt-get -y install git

ARG sails_version
RUN npm install -g sails@~$sails_version grunt-cli grunt bower nodejs pm2 npm-check-updates

RUN apt-get -y install git

RUN mkdir /server
VOLUME ["/server"]
WORKDIR /server
EXPOSE 1338
CMD ["tail","-f","/var/log/wtmp"]


