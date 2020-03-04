#!/bin/bash

# Swapping out placeholders for environment variables
sed -i -e 's/${DOCKER_USERNAME}/\'${DOCKER_USERNAME}'/g' ./kube_config.txt ./database.yaml
sed -i -e 's/${DOCKER_PASSWORD}/\'${DOCKER_PASSWORD}'/g' ./kube_config.txt ./database.yaml
sed -i -e 's/${KUBECTL_SERVER}/\'${KUBECTL_SERVER}'/g' ./kube_config.txt ./database.yaml
sed -i -e 's/${KUBECTL_USERNAME}/\'${KUBECTL_USERNAME}'/g' ./kube_config.txt ./database.yaml
sed -i -e 's/${KUBECTL_TOKEN}/\'${KUBECTL_TOKEN}'/g' ./kube_config.txt ./database.yaml
sed -i -e 's/${KUBECTL_NAMESPACE}/\'${KUBECTL_NAMESPACE}'/g' ./kube_config.txt ./database.yaml
sed -i -e 's/${KUBECTL_CLUSTER}/\'${KUBECTL_CLUSTER}'/g' ./kube_config.txt ./database.yaml
sed -i -e 's/${DATABASE_PASSWORD}/\'${DATABASE_PASSWORD}'/g' ./kube_config.txt ./database.yaml
