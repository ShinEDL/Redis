# 修改client.rb
cp ./client.rb /usr/local/bundle/gems/redis-3.3.3/lib/redis/client.rb

# 通过修改IP来修改节点配置
/usr/local/redis/src/redis-trib.rb create --replicas 1 \
172.17.0.5:7001 172.17.0.6:7002 172.17.0.9:7003 \
172.17.0.7:7004 172.17.0.8:7005 172.17.0.10:7006

