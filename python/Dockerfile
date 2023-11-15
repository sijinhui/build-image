FROM python:3.9.18-alpine

MAINTAINER sijinhui
RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.tuna.tsinghua.edu.cn/g' /etc/apk/repositories
RUN apk update && apk add vim
RUN apk add --no-cache \
       bash \
       make \
       curl \
       libstdc++
RUN apk add --no-cache \
       --virtual .build-deps \
       gcc \
       musl-dev \
       linux-headers \
       g++ \
       make \
       libxslt-dev \
       python3-dev \
       libc-dev \
       libressl-dev \
       libffi-dev \
    && ln -s /usr/include/locale.h /usr/include/xlocale.h \

RUN pip install --no-cache-dir --upgrade pip
RUN pip config set global.index-url https://pypi.tuna.tsinghua.edu.cn/simple

