ARG node_version

FROM node:$node_version

RUN apt-get update && apt-get install -y 
RUN apt-get -y install git

#RUN npm i -g create-nuxt-app
#RUN npx create-nuxt-app nuxt002

RUN mkdir /server
VOLUME ["/server"]
WORKDIR /server
EXPOSE 3000
# set app serving to permissive / assigned
ENV NUXT_HOST=0.0.0.0
# set app port
ENV NUXT_PORT=3000
CMD ["tail","-f","/var/log/wtmp"]
