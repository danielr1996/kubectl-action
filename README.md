# Kubectl Action

This action allows you to deploy to a kubernetes cluster.

Alternatives:

- [steebchen/kubectl](https://github.com/marketplace/actions/kubernetes-cli-kubectl)

## Inputs

### `kubeconfig`

Base64 encoded `.kube/config` file, to generate use:
```shell script
cat .kube/config | base64
```

## Usage
## Kustomize a Deployment
```yaml
- name: Kustomize
  uses: danielr1996/kubectl-action@1.0.0
  with:
    args: kustomize deployment/overlays/replace > template.yaml
```

## Deploy a Deployment
```yaml
- uses: danielr1996/kubectl-action@1.0.0
  name: Deploy
  with:
    kubeconfig: ${{ secrets.KUBE_CONFIG }}
    args: apply -f deployment.yaml
```
