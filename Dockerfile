FROM debian:buster

# Update packages
RUN apt-get update
RUN apt-get upgrade -y

# Install docker
RUN apt-get install curl -y
RUN update-ca-certificates --fresh
RUN curl -lfsSL https://get.docker.com -o get-docker.sh
RUN sh get-docker.sh

CMD docker ps
