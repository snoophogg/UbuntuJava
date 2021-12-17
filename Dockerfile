FROM ubuntu:20.04


RUN apt-get update && apt-get install -y --no-install-recommends \
  locales \
  openjdk-11-jre-headless \
  # libmysql-java \
  unzip \
  curl \
  wget \
  && rm -rf /var/lib/apt/lists/* \
  && sed -i -e 's/# en_US.UTF-8 UTF-8/en_US.UTF-8 UTF-8/' /etc/locale.gen && \
  locale-gen

RUN wget -q -O /tmp/mysql-connector-java_8.0.27-1ubuntu20.04_all.deb https://dev.mysql.com/get/Downloads/Connector-J/mysql-connector-java_8.0.27-1ubuntu20.04_all.deb \
  && dpkg -i /tmp/mysql-connector-java_8.0.27-1ubuntu20.04_all.deb \
  && rm /tmp/mysql-connector-java_8.0.27-1ubuntu20.04_all.deb

RUN ln -s /usr/share/java/mysql-connector-java-8.0.27.jar /usr/share/java/mysql-connector-java.jar

ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8
