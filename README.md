# Kubectl Action

This action allows you to deploy to a kubernetes cluster.

Alternatives:

-
## Inputs

### `kubeconfig`

Base64 encoded `.kube/config`
```shell script
cat .kube/config | base64
```

## Usage usage
```yaml
- uses: rlespinasse/github-slug-action@master
- uses: danielr1996/kubectl-action@0.1.0
  with:
    kubeconfig: ${{ secrets.KUBE_CONFIG }}
  env:
    VERSION: ${{ env.GITHUB_SHA_SHORT }}
    INSTANCE: ${{ env.GITHUB_REF_SLUG }}
```
