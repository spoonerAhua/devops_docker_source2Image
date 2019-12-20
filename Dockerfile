#base:https://hub.docker.com/_/centos
FROM centos:centos7.7.1908
WORKDIR /root
COPY . .
RUN yum install wget -y &&\
    wget https://nodejs.org/dist/v12.13.1/node-v12.13.1-linux-x64.tar.xz &&\
    xz -d node-v12.13.1-linux-x64.tar.xz &&\
    tar -xf node-v12.13.1-linux-x64.tar
CMD ["/root/node-v12.13.1-linux-x64/bin/node","/root/server.js"]

EXPOSE 8080
