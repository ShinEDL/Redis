## ab-redis

Redis is an open source key-value store that functions as a data structure server.

由docker官方[redis](https://hub.docker.com/r/library/redis/)镜像构建。

### 快速开始
```bash
$ {yourproject}/deploy.sh
```
适用于开发环境，生产环境请自行调优，可根据`redis.conf`文件配置。

### redis-cluster

#### 快速开始
```bash
$ {yourproject}/deploy.sh
```
适用于开发环境，生产环境请自行调优，可根据`redis.conf`文件配置。

`redis.conf`文件已配置好集群模式，如下所示，具体配置可根据需要调整。

```
cluster-enabled yes
cluster-config-file nodes-6379.conf
cluster-node-timeout 5000
cluster-slave-validity-factor 0
cluster-require-full-coverage no
```

#### redis-trib

用于启动redis集群

修改集群配置`run.sh`，配置好redis ip，然后启动`start.sh`.

之后进入容器命令行界面，执行`./run.sh`，根据提示启动redis集群，
再执行`exit`退出并销毁当前容器。
