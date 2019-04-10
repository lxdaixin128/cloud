# 启动代理池
cd /usr/local/proxy_pool/Run
nohup python3 -u main.py > proxy.log 2>&1 &

# 启动SSDB管理工具
cd /usr/local/SSDBAdmin
nohup python3 -u run.py > ssdb_admin.log 2>&1 &