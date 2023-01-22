#！/bin/bash
kubectl delete -f /home/serveradmin/hyq/tools/k8s_env/efk/kibana.yaml
kubectl delete -f /home/serveradmin/hyq/tools/k8s_env/efk/filebeat.yaml
kubectl delete -f /home/serveradmin/hyq/tools/k8s_env/efk/elastic-stack.yaml
