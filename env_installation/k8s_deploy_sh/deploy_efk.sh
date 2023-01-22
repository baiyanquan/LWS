#！/bin/bash
kubectl create -f /home/serveradmin/hyq/tools/k8s_env/efk/elastic-stack.yaml
kubectl create -f /home/serveradmin/hyq/tools/k8s_env/efk/filebeat.yaml
kubectl create -f /home/serveradmin/hyq/tools/k8s_env/efk/kibana.yaml
