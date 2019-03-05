FROM ubuntu:18.04

RUN apt-get update && apt-get install -y --no-install-recommends \
  locales localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8 \
  openjdk-8-jre-headless \
  libmysql-java \
  unzip \
  curl \
  && rm -rf /var/lib/apt/lists/*

ENV LANG en_US.utf8
