FROM python:3.9.14-alpine@sha256:d80bb38eb14230a70ef922956d0621f7dd938b16794057f6fe71a90ef9ec5504

ARG user=runner
ARG uid=1001
ARG version=v1.5.4

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
