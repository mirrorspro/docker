# docker
一些docker仓库的副本镜像

https://hub.docker.com/orgs/mirrorspro


## .e.g

目标: ```k8s.gcr.io/kube-controller-manager:v1.18.3```

镜像: ```mirrorspro/k8s.gcr.io.kube-controller-manager:v1.18.3```


* 拉取并在本地还原目标镜像，默认从docker hub上拉取

```bash

./pull.sh k8s.gcr.io/kube-controller-manager v1.18.3 

```

* 指定镜像仓库商```registry.cn-shenzhen.aliyuncs.com```

```bash

./pull.sh k8s.gcr.io/kube-controller-manager v1.18.3 registry.cn-shenzhen.aliyuncs.com

```

## 新增一个要同步的docker镜像库源

`quay.io/kubernetes-ingress-controller/nginx-ingress-controller:0.32.0`

```bash

./index.sh quay.io/kubernetes-ingress-controller/nginx-ingress-controller 0.32.0

```



