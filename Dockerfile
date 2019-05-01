FROM ubuntu:18.04
# RUN sed -i 's/archive.ubuntu.com/mirrors.aliyun.com/g' /etc/apt/sources.list
RUN apt-get update && \
    apt-get install -y wget curl && \
    curl https://get.wasmer.io -sSfL | sh
RUN wapm install sqlite
CMD wapm run sqlite
