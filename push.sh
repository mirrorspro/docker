#!/bin/bash
# ./push k8s.gcr.io kube-controller-manager:v1.18.3 
# k8s.gcr.io/kube-controller-manager:v1.18.3 => mirrorspro/k8s.gcr.io.kube-controller-manager:v1.18.3

src="${1}/${2}"
edge="mirrorspro/${1}.${2}"

docker pull ${src}
docker tag  ${src} ${edge}
docker push ${edge}