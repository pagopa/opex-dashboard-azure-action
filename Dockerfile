FROM python:3.9.14-alpine@sha256:d80bb38eb14230a70ef922956d0621f7dd938b16794057f6fe71a90ef9ec5504

ENV PATH="/root/.local/bin:${PATH}"

RUN apk add --no-cache git build-base

# RUN pip install --user 'opex_dashboard@git+https://github.com/pagopa/opex-dashboard'
RUN \
  pip install --user 'opex_dashboard@git+https://github.com/pagopa/opex-dashboard@abs-template-path' && \
  pip cache purge

# TEMP
COPY config.yaml /config.yaml

COPY entrypoint.sh /bin/entrypoint.sh

ENTRYPOINT ["/bin/entrypoint.sh"]
