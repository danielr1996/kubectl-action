#!/bin/sh

set -e

echo #########################
echo # Github kubectl Action #
echo #########################

# Extract the base64 encoded config data and write this to the KUBECONFIG
echo $INPUT_KUBECONFIG | base64 -d > ~/.kube/config

# Print deployment.yaml
cat deployment.yaml

# Deploy deployment.yaml
sh -c "kubectl $*"
