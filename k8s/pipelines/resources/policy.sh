#!/bin/sh

oc adm policy add-role-to-user system:image-builder -z pipeline
