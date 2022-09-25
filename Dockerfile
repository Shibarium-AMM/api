FROM python:3.9-alpine

ENV CRYPTOGRAPHY_DONT_BUILD_RUST=1

RUN apk update
RUN apk add gcc g++ libressl-dev libev-dev rust libffi-dev
RUN pip install --upgrade pip

WORKDIR /app
COPY ./ /app

RUN pip install -e .
