FROM debian:buster

# Update packages
RUN apt-get update
RUN apt-get upgrade -y

# Install docker
COPY install-docker.sh install-docker.sh
RUN sh install-docker.sh

CMD docker ps
