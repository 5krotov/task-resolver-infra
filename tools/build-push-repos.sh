#!/bin/bash

set -x

main_repo_path="<absolute-path-to-main-repo>"

cd $main_repo_path/.docker

svc_list=$(docker compose config --format json | \
    jq '.services | to_entries | map(select(.value.build)) | .[].key' | \
    tr -d \")

echo "$svc_list" | while read svc; do
    docker compose build $svc
    docker tag docker-$svc:latest harbor.devops-teta.ru/bergman-valery/$svc
    docker push harbor.devops-teta.ru/bergman-valery/$svc
done
