#!/usr/bin/env bash


# 安装必要前置
yum -y install gcc libffi-devel openssl-devel zlib-devel autoconf gcc+ gcc-c++ libxml2 libxslt

# 安装SSDB
wget --no-check-certificate https://github.com/ideawu/ssdb/archive/master.zip
unzip master
cd ssdb-master
make
sudo make install

# 安装python3
cd ..
wget https://www.python.org/ftp/python/3.7.3/Python-3.7.3.tgz
tar -xf  Python-3.7.3.tgz
cd Python-3.7.3
./configure --prefix=/usr/local/python3
sudo make && make install



# 环境变量配置
# vi /etc/profile

# 在最后一行添加以下内容
# PATH=$PATH:/usr/local/python3/bin
# export PATH

# 执行以下代码
# source /etc/profile

# 查询环境变量
# echo $PATH



# 配置SSDB自启
# 教程：http://ssdb.io/docs/zh_cn/install.html

