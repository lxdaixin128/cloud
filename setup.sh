#!/usr/bin/env bash
# 安装必要前置
yum -y install gcc libffi-devel openssl-devel zlib-devel autoconf gcc+ gcc-c++ libxml2 libxslt libxslt-devel

# 安装SSDB
wget --no-check-certificate https://github.com/ideawu/ssdb/archive/master.zip
unzip master
cd ssdb-master
make
sudo make install

# 修改SSDB配置文件
rm -f /usr/local/ssdb/ssdb.conf
cp /root/cloud/ssdb.conf /usr/local/ssdb

# 配置SSDB自启
cp /root/cloud/ssdb /etc/init.d
sudo chkconfig --add ssdb
sudo chkconfig ssdb on

# 安装python3
cd ..
wget https://www.python.org/ftp/python/3.7.3/Python-3.7.3.tgz
tar -xf  Python-3.7.3.tgz
cd Python-3.7.3
./configure --prefix=/usr/local/python3
sudo make && make install

# 获取proxy_pool和SSDBAdmin
cd /usr/local
git clone git@github.com:jhao104/proxy_pool.git
git clone git@github.com:jhao104/SSDBAdmin.git

# 配置爬虫代理池
rm -f /usr/local/proxy_pool/Config/setting.py
cp /root/cloud/setting.py /usr/local/proxy_pool/Config/setting.py

# 安装依赖
pip3 install APScheduler werkzeug Flask requests pymongo redis lxml



# 修改SSDB配置文件
rm -f /usr/local/ssdb/ssdb.conf
cp /root/cloud/ssdb.conf /usr/local/ssdb

# 配置SSDB自启
cp /root/cloud/ssdb /etc/init.d
sudo chkconfig --add ssdb
sudo chkconfig ssdb on



# 安装mysql (MariaDB)
yum install -y mysql-server mysql mysql-deve #安装
systemctl start mariadb #启动服务
systemctl enable mariadb #设置开机启动

mysql_secure_installation #初始化设置