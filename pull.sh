#!/bin/bash

# ./pull.sh k8s.gcr.io kube-controller-manager v1.18.3 
# mirrorspro/k8s.gcr.io.kube-controller-manager:v1.18.3 => k8s.gcr.io/kube-controller-manager:v1.18.3


src="${1}/${2}:${3}"
edge="mirrorspro/${1}.${2}:${3}"

docker pull ${edge}
docker tag ${edge} ${src}