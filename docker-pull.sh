#!/bin/bash

# ./docker-pull.sh k8s.gcr.io/kube-controller-manager v1.18.3 
# mirrorspro/k8s.gcr.io_kube-controller-manager:v1.18.3 => k8s.gcr.io/kube-controller-manager:v1.18.3

src0="${1}"
tag="${2}"

edge0=${src0////_}
edge="mirrorspro/${edge0}:${tag}"

edge=$(get_dockerhub_edge_image ${src0} ${tag})

src="${src0}:${tag}"
docker pull ${edge}
docker tag ${edge} ${src}
echo "${edge} -> ${src}"