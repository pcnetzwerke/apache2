FROM ubuntu:latest as base

MAINTAINER martin@pcnetzwerke.de

ENV LAST_UPDATED 2020-01-10
ENV LAST_TRIGGERED 2020-01-12

RUN apt-get update && \
  DEBIAN_FRONTEND=noninteractive \
  apt-get install -y --no-install-recommends \
  lsb-core \
  lsb-release  \
  apache2 \
  && rm -rf /var/lib/apt/lists/*

RUN lsb_release -a
