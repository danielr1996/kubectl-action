#!/bin/sh

set -e

echo #########################
echo # Github kubectl Action #
echo #########################

# Extract the base64 encoded config data and write this to the KUBECONFIG
mkdir -p ~/.kube
echo $INPUT_KUBECONFIG | base64 -d > ~/.kube/config

# Deploy deployment.yaml
sh -c "kubectl $*"
