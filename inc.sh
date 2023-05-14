#!/bin/bash

function get_aliyuncs_edge_image()
{
    src0="${1}"
    tag="${2}"
    area="${3}"

    if [ -z "${area}" ];then
        area="guangzhou"
    fi

    edge0=${src0////_}
    edge="registry.cn-${area}.aliyuncs.com/tomhjx/mirrorspro:${edge0}.${tag}"
    echo "${edge}"
}


function get_dockerhub_edge_image()
{
    src0="${1}"
    tag="${2}"
    edge0=${src0////_}
    edge="mirrorspro/${edge0}:${tag}"
    echo "${edge}"
}