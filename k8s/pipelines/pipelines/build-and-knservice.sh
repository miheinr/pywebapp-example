#!/bin/sh
PROJECT=mywebfuncs
COMMIT=daa104b4a3f5dbee6627da3126241c308c934b7f

tkn pipeline start build-and-knservice -w name=shared-workspace,claimName=source-pvc \
    -p knservice-name=mywebfuncs-kn \
    -p git-url=https://github.com/miheinr/pywebapp-example.git \
    -p git-revision=${COMMIT} \
    -p IMAGE=image-registry.openshift-image-registry.svc:5000/${PROJECT}/mywebfuncs \
    --showlog
