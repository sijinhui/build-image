FROM python:3.9.18-alpine

MAINTAINER sijinhui
RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.tuna.tsinghua.edu.cn/g' /etc/apk/repositories
RUN apk update && apk add vim
RUN apk add --no-cache \
       bash \
       make \
       curl \
       libstdc++ \
    && apk add --no-cache \
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
    && pip install --no-cache-dir --upgrade pip \
    && pip install --no-cache-dir pandas \
    && apk --purge del .build-deps \
    && find / -type f -iname \*.pyc -delete \
    && find / -type f -iname \*.pyo -delete \
    && find / -type f -iname __pycache__ -delete \

RUN apk add tzdata \
    apk add --virtual .build-deps build-base python3-dev libffi-dev openssl-dev \
    apk add gcc musl-dev python3-dev libffi-dev openssl-dev cargo \
    apk add cython \
    apk add py3-yaml

RUN rm -rf /var/cache/apk/*

