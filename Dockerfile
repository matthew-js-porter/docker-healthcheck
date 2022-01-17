FROM ubuntu

# Update packages
RUN apt-get update

# Install docker
RUN apt-get install docker.io -y

CMD docker ps
