#!/bin/bash

# ./docker-pull-aliyuncs.sh k8s.gcr.io/kube-controller-manager v1.18.3 
# mirrorspro/k8s.gcr.io_kube-controller-manager:v1.18.3 => k8s.gcr.io/kube-controller-manager:v1.18.3

src0="${1}"
tag="${2}"
area="${3}"

edge=$(get_aliyuncs_edge_image ${src0} ${tag} ${area})

src="${src0}:${tag}"
docker pull ${edge}
docker tag ${edge} ${src}
echo "${edge} -> ${src}"