FROM ubuntu:latest as base

MAINTAINER martin@pcnetzwerke.de

ENV LAST_UPDATED 2020-01-10
ENV LAST_TRIGGERED 2022-11-06

RUN apt-get update \
  && DEBIAN_FRONTEND=noninteractive \
  apt-get install -y --no-install-recommends \
  lsb-core \
  lsb-release  \
  apache2 \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*

RUN lsb_release -a

COPY content.html /var/www/html/

EXPOSE 80/tcp

CMD ["apachectl", "-D", "FOREGROUND"]
