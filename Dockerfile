FROM ubuntu:18.04
# RUN sed -i 's/archive.ubuntu.com/mirrors.aliyun.com/g' /etc/apt/sources.list
RUN apt-get update
RUN apt-get install -y wget curl
COPY install.sh /
RUN sh /install.sh
RUN wapm install sqlite
CMD wapm run sqlite
