# from https://hub.docker.com/_/python
FROM python:3.12.0-alpine3.17@sha256:d3f52543a68f2c98642a2efe3055d1c586d488b6d45e9dabea21c087b732f7f7

ARG user=runner
ARG uid=1001
ARG version=v1.8.1

ENV PATH="/home/${user}/.local/bin:${PATH}"

RUN \
  apk update && \
  apk upgrade && \
  apk add git build-base && \
  rm -rf /var/cache/apk/* && \
  adduser -u ${uid} -D ${user}

RUN \
  python -m pip install "opex_dashboard @ git+https://github.com/pagopa/opex-dashboard@${version}" && \
  python -m pip cache purge

COPY entrypoint.sh /bin/entrypoint.sh

USER ${user}

ENTRYPOINT ["/bin/entrypoint.sh"]
