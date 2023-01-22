#！/bin/bash
kubectl delete --ignore-not-found=true -f /home/serveradmin/hyq/tools/k8s_env/kube-prometheus/manifests/ -f /home/serveradmin/hyq/tools/k8s_env/kube-prometheus/manifests/setup
