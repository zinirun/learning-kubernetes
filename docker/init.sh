#!/usr/bin/env bash

#run myubuntu instance
docker build -t centos7-ssh ./centos7/
docker-compose --compatibility -f ./centos7/docker-compose.yml up -d

## docker run --rm -it ubuntu /bin/bash