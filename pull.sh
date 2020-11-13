#!/bin/bash

# ./pull.sh k8s.gcr.io/kube-controller-manager v1.18.3 
# mirrorspro/k8s.gcr.io_kube-controller-manager:v1.18.3 => k8s.gcr.io/kube-controller-manager:v1.18.3


src0="${1}"
tag="${2}"
edge0=${src////_}
edge="mirrorspro/${edge0}:${tag}"
src="${src0}:${tag}"
docker pull ${edge}
docker tag ${edge} ${src}