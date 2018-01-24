set -ex 

minikube start --extra-config=apiserver.etcd-servers=http://127.0.0.1:2379 \
  --extra-config=apiserver.service-cluster-ip-range=10.0.0.0/16 \
  --extra-config=apiserver.authentication-token-webhook-config-file=$KUBECONFIGLOC\
  --extra-config=apiserver.authorization-mode=Webhook \
  --extra-config=apiserver.authorization-webhook-config-file=$KUBECONFIGLOC

