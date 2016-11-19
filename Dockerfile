FROM node:argon

MAINTAINER Mathias Fredrik Hedberg <mathias@metrafonic.com>

# Install apt-get commands
RUN apt-get update && apt-get install unzip g++ -y


#Install oracle dep
RUN mkdir -p /opt/oracle
COPY dep/instantclient-basic-linux.x64-12.1.0.2.0.zip /opt/oracle/instantclient-basic-linux.x64-12.1.0.2.0.zip
COPY dep/instantclient-sdk-linux.x64-12.1.0.2.0.zip /opt/oracle/instantclient-sdk-linux.x64-12.1.0.2.0.zip
WORKDIR /opt/oracle
RUN unzip -q instantclient-basic-linux.x64-12.1.0.2.0.zip
RUN unzip -q instantclient-sdk-linux.x64-12.1.0.2.0.zip
RUN mv instantclient_12_1 instantclient
WORKDIR /opt/oracle/instantclient
RUN ln -s libclntsh.so.12.1 libclntsh.so
RUN export LD_LIBRARY_PATH=/opt/oracle/instantclient:$LD_LIBRARY_PATH

# Create app directory
RUN mkdir -p /usr/src
WORKDIR /usr/src

RUN git clone https://github.com/metrafonic/hendelser.git app

WORKDIR /usr/src/app

RUN npm install
RUN npm install oracledb
EXPOSE 8080

CMD git pull;npm start
