FROM node:14.15.1-alpine

RUN apk add --no-cache \
        python3 \
        py3-pip \
        git \
    && pip3 install --upgrade pip \
    && pip3 install --no-cache-dir \
        awscli==1.16.11 \
        awsebcli==3.14.6 \
    && rm -rf /var/cache/apk/*
