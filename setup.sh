#!/usr/bin/env bash

# 安装必要前置
yum -y install gcc libffi-devel openssl-devel zlib-devel autoconf gcc+ gcc-c++ libxml2 libxslt git-core libxml2-dev libxslt-devel

# 安装SSDB
wget --no-check-certificate https://github.com/ideawu/ssdb/archive/master.zip
unzip master
cd ssdb-master
make
sudo make install
# 将安装在 /usr/local/ssdb 目录下
# 问题解决： http://ssdb.io/docs/zh_cn/install.html

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

# 安装依赖
pip3 install APScheduler werkzeug Flask requests pymongo redis lxml





# 配置SSDB自启
# 教程：http://ssdb.io/docs/zh_cn/install.html


# 安装mysql (MariaDB)
# yum install -y mysql-server mysql mysql-deve #安装

# systemctl start mariadb #启动服务
# systemctl enable mariadb #设置开机启动
# systemctl restart mariadb #重新启动
# systemctl stop mariadb.service #停止MariaDB

# mysql_secure_installation #初始化设置