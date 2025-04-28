FROM centos:centos7.9.2009

LABEL maintainer="sijinhui"

# 安装基础工具和依赖
RUN curl -o /etc/yum.repos.d/CentOS-Base.repo https://mirrors.aliyun.com/repo/Centos-7.repo && yum makecache && \
    yum install -y gcc openssl-devel bzip2-devel libffi-devel make wget tar && \
    yum clean all

# 下载并安装 Python 3.11
WORKDIR /tmp
RUN wget https://www.python.org/ftp/python/3.11.12/Python-3.11.12.tgz && \
    tar xzf Python-3.11.12.tgz && \
    cd Python-3.11.12 && \
    ./configure --enable-optimizations && \
    make altinstall && \
    cd .. && \
    rm -rf Python-3.11.12 Python-3.11.12.tgz

# 创建软链接
RUN ln -sf /usr/local/bin/python3.11 /usr/bin/python3 && \
    ln -sf /usr/local/bin/pip3.11 /usr/bin/pip3

# 配置 pip 源
RUN pip3 config set global.index-url https://pypi.tuna.tsinghua.edu.cn/simple

# 设置工作目录
WORKDIR /app

# 创建打包脚本
COPY build.sh /app/
RUN chmod +x /app/build.sh

CMD ["/app/build.sh"] 