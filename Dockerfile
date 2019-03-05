FROM ubuntu:18.04

RUN apt-get update && apt-get install -y --no-install-recommends \
  locales \
  openjdk-8-jre-headless \
  libmysql-java \
  unzip \
  curl \
  && rm -rf /var/lib/apt/lists/* \
  && sed -i -e 's/# en_US.UTF-8 UTF-8/en_US.UTF-8 UTF-8/' /etc/locale.gen && \
  locale-gen

ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8
