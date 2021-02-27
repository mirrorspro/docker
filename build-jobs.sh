#!/bin/bash
pwd
build() {
    root=`dirname $0`
    repo=$1
    tag=$2
    workflowYmlRoot="${root}/workflows"
    mkdir -p ${workflowYmlRoot}
    workflowYml="${workflowYmlRoot}/${repo////_}:${tag}.yml"
    tpl="${root}/workflows-tpls/cronjob"
    cp ${tpl} ${workflowYml}
    echo "${tpl} -> ${workflowYml}"
    sed -i "s?#repo#?${repo}?g" ${workflowYml}
    sed -i "s?#tag#?${tag}?g" ${workflowYml}
    cat ${workflowYml}
}

dist="dist"

for repo in `find ${dist} -type f -printf "%P\n"`
do
    for tag in `cat ${dist}/${repo}|sed 's/ //g'`
    do
        build ${repo} $tag
    done
done