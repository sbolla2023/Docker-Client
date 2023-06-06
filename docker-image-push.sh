#!/bin/bash

dversion=1.3
se -e

docker build -t docker-client .

docker tag docker-client:latest sreenireg.azurecr.io/docker-client:${dversion}
docker tag sreenireg.azurecr.io/elastickondoctor-client:${dversion} sreenireg.azurecr.io/docker-client:latest
docker push sreenireg.azurecr.io/docker-client:${dversion}
docker push sreenireg.azurecr.io/docker-client:latest