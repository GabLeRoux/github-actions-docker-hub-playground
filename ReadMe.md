# github-actions-docker-hub-playground

This s just a playground try https://github.com/docker/build-push-action/

## what is being dockerized?

[`howdoi`](https://github.com/gleitz/howdoi)

I've also experimented with multi-stage build to compare image build size result.

multi-stage build: 83.21 MB
single stage: 356.84 MB

`howdoi` must have `libxslt.so.1` shared library in place so
