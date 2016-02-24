#
# SBT, GIT and JAVAC image based on Ubuntu 14.04
#

FROM java:7
MAINTAINER Ankit Kariryaa <ankit.ky@gmail.com>

RUN echo "deb https://dl.bintray.com/sbt/debian /" | tee -a /etc/apt/sources.list.d/sbt.list
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 642AC823
RUN cd /root && wget http://ftp.de.debian.org/debian/pool/main/a/apt/apt-transport-https_1.0.9.8.2_amd64.deb && dpkg -i apt-transport-https_1.0.9.8.2_amd64.deb && rm apt-transport-https_1.0.9.8.2_amd64.deb 
RUN apt-get update && apt-get install -y \
                       git \
                       sbt \
         && rm -rf /var/lib/apt/lists/*

RUN sbt -sbt-version 0.13.11 exit
