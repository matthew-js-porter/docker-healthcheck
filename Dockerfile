FROM alpine

# Update packages
RUN apk update
RUN apk upgrade
RUN apk add docker

CMD docker ps
