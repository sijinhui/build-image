#!/bin/bash

# 创建输出目录
mkdir -p /app/output

# 压缩 Python 安装目录
cd /usr/local
tar czf /app/output/python3.9-centos7.tar.gz lib/python3.9 lib/python3.9.* bin/python3.9 bin/pip3.9

# 输出文件大小信息
ls -lh /app/output/python3.9-centos7.tar.gz 