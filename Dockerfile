# Dockerfile
FROM python:3.12-alpine

USER root
RUN apk update && apk add --no-cache \
    nano \
    make \
    gcc \
    g++ \
    musl-dev \
    libffi-dev \
    openssl-dev \
    python3-dev \
    py3-pip \
    lapack-dev \
    libstdc++ \
    && pip install --upgrade pip

ARG UID=1000
RUN id php || adduser -D -u $UID -s /bin/sh php
USER php