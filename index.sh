#!/bin/bash
# ./index.sh k8s.gcr.io/kube-controller-manager v1.18.3 
# k8s.gcr.io/kube-controller-manager:v1.18.3 => mirrorspro/k8s.gcr.io_kube-controller-manager:v1.18.3

repo="${1}"
tag="${2}"
distroot="dist"
reporoot="${distroot}/${repo%/*}"
repofile="${distroot}/${repo}"

mkdir -p ${reporoot}
echo "" >> ${repofile}
echo ${tag} >> ${repofile}

sort -ru ${repofile} -o ${repofile}