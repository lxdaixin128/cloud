# 源码的安装一般由有这三个步骤：配置(configure)、编译(make)、安装(make install)
yum -y install gcc libffi-devel openssl-devel zlib-devel autoconf gcc+ gcc-c++


# 安装SSDB
wget --no-check-certificate https://github.com/ideawu/ssdb/archive/master.zip
unzip master
cd ssdb-master
make
sudo make install
# 将安装在 /usr/local/ssdb 目录下
# 问题解决： http://ssdb.io/docs/zh_cn/install.html
cd ..
wget https://www.python.org/ftp/python/3.7.3/Python-3.7.3.tgz
tar -xf  Python-3.7.3.tgz
cd Python-3.7.3
./configure --prefix=/usr/local/python3
sudo make && make install










# 重置ssh登录
# ssh-keygen -R 94.191.9.234
# 上传文件
# scp /Users/mr.dong/Desktop/setup.sh root@94.191.9.234:/root/setup.sh
