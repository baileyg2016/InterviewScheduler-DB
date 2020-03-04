#!/bin/bash

docker login -u ${DOCKER_USERNAME} -p ${DOCKER_PASSWORD}

mkdir ~/.kube

cp ./kube_config.txt ~/.kube/config

kubectl apply -f ./database.yaml
