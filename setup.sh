# Դ��İ�װһ���������������裺����(configure)������(make)����װ(make install)
yum -y install gcc libffi-devel openssl-devel zlib-devel autoconf gcc+ gcc-c++


# ��װSSDB
wget --no-check-certificate https://github.com/ideawu/ssdb/archive/master.zip
unzip master
cd ssdb-master
make
sudo make install
# ����װ�� /usr/local/ssdb Ŀ¼��
# �������� http://ssdb.io/docs/zh_cn/install.html
cd ..
wget https://www.python.org/ftp/python/3.7.3/Python-3.7.3.tgz
tar -xf  Python-3.7.3.tgz
cd Python-3.7.3
./configure --prefix=/usr/local/python3
sudo make && make install










# ����ssh��¼
# ssh-keygen -R 94.191.9.234
# �ϴ��ļ�
# scp /Users/mr.dong/Desktop/setup.sh root@94.191.9.234:/root/setup.sh
