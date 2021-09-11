# github-actions-docker-hub-playground

This s just a playground try https://github.com/docker/build-push-action/

## What is being dockerized?

[`howdoi`](https://github.com/gleitz/howdoi)

## Usage

```bash
docker run --rm -it gableroux/howdoi
```

## Multi-stage build vs Single stage build

I tried both solutions and since `howdoi` must have `libxslt.so.1` shared library in place. Here's the result so far:

|multi-stage build|single stage|
|-----------------|------------|
|83.21 MB         |356.84 MB   |

## License

[MIT](LICENSE.md) © [Gabriel Le Breton](https://gableroux.com)
