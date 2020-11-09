# docker
一些docker仓库的副本镜像

## .e.g

目标: ```k8s.gcr.io/kube-controller-manager:v1.18.3```

镜像: ```mirrorspro/k8s.gcr.io.kube-controller-manager:v1.18.3```


* 提交

```bash

./push k8s.gcr.io kube-controller-manager:v1.18.3 

```            

* 拉取并在本地还原目标镜像

```bash

./pull.sh k8s.gcr.io kube-controller-manager:v1.18.3 

```