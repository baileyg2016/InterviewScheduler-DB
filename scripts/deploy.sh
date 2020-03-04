#!/bin/bash

#login to docker
docker login -u ${DOCKER_USERNAME} -p ${DOCKER_PASSWORD}

#set the kubectl config file in the ~/.kube/config location
mkdir ~/.kube

#switch out environment variables for placeholders
./scripts/env_vars.sh

cp ./kube_config.txt ~/.kube/config

#cat ./kube_config.txt 
#cat ./database.yaml

kubectl apply -f ./database.yaml
