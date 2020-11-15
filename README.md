# docker 镜像边缘仓库搬运器
目标是解决在跨网络的场景下，难以获取镜像的问题

![example workflow file path](https://github.com/mirrorspro/docker/workflows/.github/workflows/deploy.yml/badge.svg)



## 它是如何工作的

![](./doc/mirrorspro_docker.jpg)

## 目录结构

```

./
├── README.md
├── build-jobs.sh           ... 构建github actions jobs的脚本
├── dist                    ... 源镜像配置
├── doc                     
├── index.sh                ... 添加源镜像索引脚本
├── pull.sh                 ... 拉取镜像脚本
├── workflows               ... 临时存储github actions jobs配置，用于同步至机器人仓库（https://github.com/mirrorspro/docker.bot.git）
└── workflows-tpls          ... github actions jobs配置模板

```

## 我要怎样使用

* 新增一个要同步的docker镜像库源


```bash

./index.sh quay.io/kubernetes-ingress-controller/nginx-ingress-controller 0.32.0

```

* 生成镜像索引配置后，提交到github

```bash

git add -A ./dist && git commit -m "新增源镜像" && git push

```

* 确认镜像已经成功提交到边缘仓库

e.g. 

https://hub.docker.com/orgs/mirrorspro

命名格式：

源 `quay.io/kubernetes-ingress-controller/nginx-ingress-controller:0.32.0`

--（`/`被替换为`_`）-->

目标 `mirrorspro/quay.io_kubernetes-ingress-controller_nginx-ingress-controller:0.32.0`


* 在本地使用镜像

```bash

// from docker hub
./pull.sh quay.io/kubernetes-ingress-controller/nginx-ingress-controller 0.32.0

// from registry.cn-shenzhen.aliyuncs.com 
./pull.sh quay.io/kubernetes-ingress-controller/nginx-ingress-controller 0.32.0 registry.cn-shenzhen.aliyuncs.com

```







