FROM debian:bullseye

# Update packages
RUN apt-get update
RUN apt-get upgrade -y

# Install docker
RUN apt-get install curl -y
RUN update-ca-certificates --fresh

# Install docker
RUN curl -fsSL https://get.docker.com -o get-docker.sh && sh get-docker.sh

CMD docker ps
