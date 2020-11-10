#!/bin/bash

build() {
    domain=$1
    repo=$2
    tag=$3
    workflowYml=".github/workflows/${domain}.${repo}:${tag}.yml"
    tpl='./github-workflows-tpls/cronjob'
    cp ${tpl} ${workflowYml}
    echo "${tpl} -> ${workflowYml}"
    sed -i "s?#domain#?${domain}?g" ${workflowYml}
    sed -i "s?#repo#?${repo}?g" ${workflowYml}
    sed -i "s?#tag#?${tag}?g" ${workflowYml}
    cat ${workflowYml}
}

dist="dist"

for domain in `ls ${dist}`
do
    for repo in `ls ${dist}/${domain}`
    do
        while read tag
        do
            build $domain $repo $tag
        done < "${dist}/${domain}/${repo}"
    done
done