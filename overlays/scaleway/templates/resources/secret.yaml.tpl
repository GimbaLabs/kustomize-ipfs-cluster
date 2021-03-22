apiVersion: v1
kind: Secret
metadata:
  name: secret-config
type: Opaque
data:
  cluster-secret: ${IPFS_CLUSTER_SECRET}
  bootstrap-peer-priv-key: ${IPFS_BOOTSTRAP_PEER_PRIV_KEY}
