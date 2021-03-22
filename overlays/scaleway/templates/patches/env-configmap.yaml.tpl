apiVersion: v1
kind: ConfigMap
metadata:
  name: env-config
data:
  bootstrap-peer-id: "${IPFS_BOOTSTRAP_PEER_ID}"
  CLUSTER_RESTAPI_HTTPLISTENMULTIADDRESS: "/ip4/0.0.0.0/tcp/9094"
  CLUSTER_IPFSPROXY_NODEMULTIADDRESS: "/ip4/0.0.0.0/tcp/5001"
