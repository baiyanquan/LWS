#！/bin/bash
kubectl create -f /home/serveradmin/hyq/tools/k8s_env/kube-prometheus/manifests/setup
until kubectl get servicemonitors --all-namespaces ; do date; sleep 1; echo ""; done
kubectl create -f /home/serveradmin/hyq/tools/k8s_env/kube-prometheus/manifests/
