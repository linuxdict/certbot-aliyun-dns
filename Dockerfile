FROM certbot/certbot:v2.11.0

LABEL maintainer="edy@linuxdict.com"

RUN wget -O /tmp/aliyun-cli-linux-latest-amd64.tgz https://aliyuncli.alicdn.com/aliyun-cli-linux-latest-amd64.tgz \
    && tar xf /tmp/aliyun-cli-linux-latest-amd64.tgz -C /usr/local/bin \
    && chmod +x /usr/local/bin/aliyun \
    && rm /tmp/aliyun-cli-linux-latest-amd64.tgz

WORKDIR /app

COPY aliyun-dns /usr/local/bin/aliyun-dns
