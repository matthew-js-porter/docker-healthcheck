# Docker Healthcheck [![Deploy Docker Image](https://github.com/matthew-js-porter/docker-healthcheck/actions/workflows/build.yml/badge.svg)](https://github.com/matthew-js-porter/docker-healthcheck/actions/workflows/build.yml)
docker image for checking the health of running containers. The main purpose of this project is to monitor containers running on a raspberry pi.

## Build

The Docker image can be built with the following command.

```bash
docker build . -t matthewjsporter/docker-healthcheck:latest
```

## Run

The image can be ran with the following command.

```bash
docker run -v /var/run/docker.sock:/var/run/docker.sock matthewjsporter/docker-healthcheck:latest
```

## Scans

Scans are done using Snyk. to run a scan locally

```bash
snyk test --file=Dockerfile --docker matthewjsporter/docker-healthcheck:latest --policy-path=.snyk
```

