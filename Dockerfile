#
# SBT, GIT and JAVAC image based on Ubuntu 14.04
#

FROM ubuntu:14.04
MAINTAINER Ankit Kariryaa <ankit.ky@gmail.com>

RUN apt-get update && apt-get install -y \
                       git \
                       default-jdk \
                       sbt \
         && rm -rf /var/lib/apt/lists/*

RUN sbt exit
