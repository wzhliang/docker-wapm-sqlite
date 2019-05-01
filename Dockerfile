FROM ubuntu:18.04
# RUN sed -i 's/archive.ubuntu.com/mirrors.aliyun.com/g' /etc/apt/sources.list
RUN apt-get update && \
    apt-get install -y wget curl && \
    wget https://get.wasmer.io  && sh index.html
RUN wapm install sqlite
CMD wapm run sqlite
