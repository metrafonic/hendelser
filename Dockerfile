FROM node:argon

MAINTAINER Mathias Hedberg <mathias@metrafonic.com>

# Create app directory
RUN mkdir -p /usr/src
WORKDIR /usr/src

RUN git clone https://github.com/metrafonic/hendelser.git app

WORKDIR /usr/src/app

RUN npm install

EXPOSE 8080

CMD [ "npm", "start" ]
