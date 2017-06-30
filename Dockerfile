FROM alpine:3.4
MAINTAINER Akshay Kapoor <akshaykapoor@crowdfireapp.com>

ENV Version=5.1.1
RUN apk --update add python py-setuptools py-pip && \
    pip install elasticsearch-curator==${Version} && \
    apk del py-pip && \
    rm -rf /var/cache/apk/*

ENTRYPOINT ["/usr/bin/curator"]

