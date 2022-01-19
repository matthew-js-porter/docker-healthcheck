FROM alpine

RUN apk update
RUN apk upgrade
RUN apk add docker

CMD watch -n600 docker ps
