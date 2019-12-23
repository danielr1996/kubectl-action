# kubectl action

This action can be used to interact with the kubectl command line utility.

## Inputs

### `kubeconfig`

Base64 encoded `.kube/config`
```shell script
cat .kube/config | base64
```

## Example usage
```
- name: Kustomize
  uses: ./.github/actions/kubectl-action
  with:
    args: kustomize deployment/overlays/replace > replace.yaml
```
