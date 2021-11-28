#!/usr/local/Cellar/bash/5.1/bin/bash 
message=$1
echo ${message}
helm package helm-chart-sources/*
helm repo index --url https://chechuironman.github.io/helm-repo/ .
git add .
git commit -m "${message}"
git push
