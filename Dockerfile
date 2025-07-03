# from https://hub.docker.com/_/python
FROM python:3.11.2-alpine3.17@sha256:1c66f5282876229c87851cde3a1c7eb8939f212cdf398201f86f5416c7907656

ARG user=runner
ARG uid=1001
ARG version=v1.8.5

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
