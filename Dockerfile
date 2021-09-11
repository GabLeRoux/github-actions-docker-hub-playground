FROM python:3.9-alpine

COPY requirements.txt ./

RUN apk add --update --no-cache \
    --virtual .build-deps \
    make \
    gcc \
    g++ \
    python3-dev \
    && apk add --no-cache \
        libxml2-dev \
        libxslt-dev \
    && pip install --upgrade pip \
    && pip install --no-cache-dir -r requirements.txt
    && apk del .build-deps

CMD ["/usr/local/bin/howdoi"]
