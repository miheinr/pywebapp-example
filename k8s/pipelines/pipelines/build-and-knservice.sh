#!/bin/sh
PROJECT=mywebfuncs
COMMIT=48cad9c56bdab76695ad168aa04531f492d1778d

tkn pipeline start build-and-knservice -w name=shared-workspace,claimName=source-pvc \
    -p knservice-name=mywebfuncs-kn \
    -p git-url=https://github.com/miheinr/pywebapp-example.git \
    -p git-revision=${COMMIT} \
    -p IMAGE=image-registry.openshift-image-registry.svc:5000/${PROJECT)/mywebfuncs \
    --showlog
