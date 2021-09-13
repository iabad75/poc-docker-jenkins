FROM jenkins/jenkins:lts-jdk11

# set roor user to install dependencies and docker
USER root

# install dependencies
RUN apt-get update && apt-get install -y apt-transport-https ca-certificates curl gnupg2 software-properties-common

# install docker comunity edition
RUN curl -fsSL https://download.docker.com/linux/debian/gpg | apt-key add -
RUN add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/debian $(lsb_release -cs) stable"
RUN apt-get update && apt-get install docker-ce -y

# add jenkins to docker group
RUN usermod -aG docker jenkins
