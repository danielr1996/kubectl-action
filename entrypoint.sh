#!/bin/sh

set -e

echo #########################
echo # Github kubectl Action #
echo #########################

pwd
ls -la
# Extract the base64 encoded config data and write this to the KUBECONFIG
#echo $INPUT_KUBECONFIG | base64 -d > /tmp/config

# Generate kustomized deployment.yaml
#/opt/kubectl kustomize deployment/overlays/replace > template.yaml

# Replace Environment Vars in deployment.yaml
#envsubst '$VERSION $INSTANCE' < template.yaml > deployment.yaml

# Print deployment.yaml
#cat deployment.yaml

# Deploy deployment.yaml
#/opt/kubectl --kubeconfig /tmp/config apply -f deployment.yaml
