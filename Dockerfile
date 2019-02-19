FROM ubuntu:18.04

RUN apt-get update -y
RUN apt-get install -y locales
RUN localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
RUN apt-get install -y openjdk-8-jdk-headless
RUN apt-get install -y libmysql-java
RUN apt-get install -y unzip
RUN apt-get install -y curl
RUN rm -rf /var/lib/apt/lists/*

ENV LANG en_US.utf8
