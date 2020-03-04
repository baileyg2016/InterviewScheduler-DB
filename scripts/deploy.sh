#!/bin/bash

docker login -u ${DOCKER_USERNAME} -p ${DOCKER_PASSWORD}

mkdir ~/.kube

cp ./kube_config.txt ~/.kube/config

./scripts/env_vars.sh

cat ./kube_config.txt 
cat ./database.yaml

kubectl apply -f ./database.yaml
