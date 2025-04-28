#!/bin/bash

# 创建目标目录
mkdir -p /usr/local/lib
mkdir -p /usr/local/bin

# 解压Python包
tar xzf python3.9-centos7.tar.gz -C /usr/local

# 配置环境变量
cat > /etc/profile.d/python3.11.sh << 'EOF'
export PATH=/usr/local/bin:$PATH
export PYTHONPATH=/usr/local/lib/python3.9/site-packages:/usr/local/lib/python3.9
export PYTHONHOME=/usr/local
EOF

# 使环境变量立即生效
source /etc/profile.d/python3.9.sh

# 创建软链接（可选）
ln -sf /usr/local/bin/python3.9 /usr/local/bin/python3
ln -sf /usr/local/bin/pip3.9 /usr/local/bin/pip3

# 验证安装
python3.9 --version
pip3.9 --version 