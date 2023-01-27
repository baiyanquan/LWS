# LWS: Kubernetes-based Workload Simulation Environment Deployment

## Prerequisites

Before starting the deployment, the following basic resources need to be prepared  (Note that a weaker configuration may also be able to run but may be unstable which may cause system jamming or crashing):

| Resource                 | Configuration | Amount |
| ------------------------ | ------------- | -----: |
| Physical/Virtual Machine | RAM $\geq$ 8GB; CPU $\geq$ 4-core,2.10GHz; free disk space $\geq$ 50GB | $\geq$ 5 |
| Operation System         | Ubuntu 18.04.6 LTS  | - |
| Network                  | Fixed IP, each machine can connect another through SSH | - |
| Time                     | Time synchronization for all machines | - |

## Kubernetes Deployment

Sealos (https://www.sealos.io/docs/getting-started/prerequisites) is used for Kubernetes deployment. First we need to choose a machine as the master and the others are nodes. Their IP configuration is shown as follows:

| Role   | IP        |
| ------ | --------: |
| Master | MASTER-IP |
| Node-1 | NODE-IP1  |
| Node-2 | NODE-IP2  |
| Node-3 | NODE-IP3  |
| Node-4 | NODE-IP4  |

Then install sealos and download Kubernetes installation package:

```
wget -c https://github.com/fanux/sealos/releases/download/v3.3.9-alpha.1/sealos && chmod +x sealos && mv sealos /usr/bin
```

```
wget -c https://sealyun.oss-cn-beijing.aliyuncs.com/7c99d609558739833f892ec385914933-v1.18.15/kube1.18.15.tar.gz
```

Configure all machines with the same username and password. Then deploy Kubernetes using the following command:

```
sealos init --passwd $password$ \ 
--master $MASTER-IP$ \
--node $NODE-IP1$ --node $NODE-IP2$ \
--node $NODE-IP3$ --node $NODE-IP4$ \ 
--pkg-url $base_file_path$/kube1.18.15.tar.gz \ 
--version v1.18.15
```

## Hipstershop Deployment

Please refer to the documentation in https://github.com/GoogleCloudPlatform/microservices-demo.

## Prometheus Deployment

```
# deployment
bash ./env_installation/k8s_deploy_sh/deploy_prometheus.sh

# uninstall
bash ./env_installation/k8s_deploy_sh/uninstall_prometheus.sh
```

## Elasticsearch Deployment


```
# deployment
bash ./env_installation/k8s_deploy_sh/deploy_efk.sh

# uninstall
bash ./env_installation/k8s_deploy_sh/uninstall_efk.sh
```
