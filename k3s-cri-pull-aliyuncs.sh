#!/bin/bash

# ./k3s-cri-pull-aliyuncs.sh registry.k8s.io/ingress-nginx/kube-webhook-certgen v20221220-controller-v1.5.1-58-g787ea74b6
# registry.cn-guangzhou.aliyuncs.com/tomhjx/mirrorspro:registry.k8s.io_ingress-nginx_kube-webhook-certgen.v20221220-controller-v1.5.1-58-g787ea74b6 -> registry.k8s.io/ingress-nginx/kube-webhook-certgen:v20221220-controller-v1.5.1-58-g787ea74b6

PARENT_DIR=`dirname $0`
. ${PARENT_DIR}/inc.sh

src0="${1}"
tag="${2}"
area="${3}"

src="${src0}:${tag}"

edge=$(get_aliyuncs_edge_image ${src0} ${tag} ${area})

k3s ctr image pull ${edge}

k3s ctr image tag --force ${edge} ${src}

echo "${edge} -> ${src}"