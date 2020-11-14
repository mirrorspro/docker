# docker
一些docker仓库的副本镜像

## .e.g

目标: ```k8s.gcr.io/kube-controller-manager:v1.18.3```

镜像: ```mirrorspro/k8s.gcr.io.kube-controller-manager:v1.18.3```


* 提交

```bash

./sync.sh k8s.gcr.io/kube-controller-manager v1.18.3 

```

* 拉取并在本地还原目标镜像

```bash

./pull.sh k8s.gcr.io/kube-controller-manager v1.18.3 

```

## 新增一个要同步的docker镜像库源

`quay.io/kubernetes-ingress-controller/nginx-ingress-controller:0.32.0`

```bash

./index.sh quay.io/kubernetes-ingress-controller/nginx-ingress-controller 0.32.0

```

