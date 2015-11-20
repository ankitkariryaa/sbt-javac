#
# SBT, GIT and JAVAC image based on Ubuntu 14.04
#

FROM ubuntu:14.04
MAINTAINER Ankit Kariryaa <ankit.ky@gmail.com>

RUN echo "deb https://dl.bintray.com/sbt/debian /" | sudo tee -a /etc/apt/sources.list.d/sbt.list
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 642AC823
RUN apt-get install -y apt-transport-https
RUN apt-get update && apt-get install -y \
                       git \
                       default-jdk \
                       sbt \
         && rm -rf /var/lib/apt/lists/*

RUN sbt exit
