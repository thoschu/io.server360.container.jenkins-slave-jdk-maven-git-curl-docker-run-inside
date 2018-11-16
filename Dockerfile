FROM thoschu/jenkins-slave-jdk-maven-git-curl:latest

MAINTAINER thoschulte@gmail.com

USER root

RUN apt-get update \
      && apt-get upgrade -y \
      && apt-get install -y sudo libltdl-dev \
      && rm -rf /var/lib/apt/lists/*

RUN echo "jenkins ALL=NOPASSWD: ALL" >> /etc/sudoers

USER jenkins
