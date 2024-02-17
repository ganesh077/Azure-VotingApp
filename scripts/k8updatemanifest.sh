#!/bin/bash

set -x

REPO_URL="https://hzh33ulxtqjmsuy5xf2kxjbcbrzbn5j3t2sscp354xuca74tysfa@dev.azure.com/ganeshthampi/Voting-Application/_git/Voting-Application"

git clone "$REPO_URL" /tmp/tmp_repo

cd /tmp/tmp_repo

sed -i "s|image:.*|image: ganesh077.azurecr.io/$2:$3|g" k8s-specifications/$1-deployment.yaml

git add .

git commit -m "Update K8s Manifest"

git push

rm -rf /tmp/temp_repo
