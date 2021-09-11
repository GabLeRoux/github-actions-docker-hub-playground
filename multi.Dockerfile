FROM python:3.9-alpine as builder

RUN apk add --update --no-cache \
    make \
    gcc \
    g++ \
    libxml2-dev \
    libxslt-dev \
    python3-dev

COPY ./requirements.txt .
RUN pip wheel --no-cache-dir --no-deps --wheel-dir /usr/src/app/wheels -r requirements.txt

FROM python:3.9-alpine as runtime

RUN apk add --update --no-cache \
    libxml2-dev \
    libxslt-dev

COPY --from=builder /usr/src/app/wheels /wheels
COPY --from=builder requirements.txt .

RUN pip install --upgrade --no-cache pip \
  && pip install --no-cache /wheels/*

CMD ["/usr/local/bin/howdoi"]
