# Requirements

* docker
* k8s (k3d would do the job locally)
* kustomize
* kapp

# Deploy

* Load baids:
```
source baids/*
```
* Generate keys using binary from a docker image (they will be stored as `.ipfs*`)
```
kustomize-ipfs-generate-ipfs-key
```
* Generate environment file for `$ENV`
```
ENVIRONMENT=local
kustomize-ipfs-generate-env-file $ENVIRONMENT
```
* Render kustomize templates for `$ENV`
```
ENVIRONMENT=local
OVERLAY=$ENVIRONMENT
kustomize-ipfs-render-overlay $OVERLAY
```
* Deploy
```
OVERLAY=local
NAMESPACE=ipfs-cluster-${OVERLAY}
APP_NAME=${NAMESPACE}
kubectl get ns ${NAMESPACE} || kubectl create ns ${NAMESPACE}
kapp deploy -c \
  --app ${APP_NAME} \
  --namespace ${NAMESPACE} \
  --file overlays/${OVERLAY}/output.yaml
```
