FROM python:3.9.14-alpine@sha256:d80bb38eb14230a70ef922956d0621f7dd938b16794057f6fe71a90ef9ec5504

ENV PATH="/root/.local/bin:${PATH}"

RUN apk add --no-cache git build-base

# RUN pip install 'opex_dashboard@git+https://github.com/pagopa/opex-dashboard'
RUN \
  python -m pip install 'opex_dashboard @ git+https://github.com/pagopa/opex-dashboard@abs-template-path' && \
  python -m pip cache purge

COPY entrypoint.sh /bin/entrypoint.sh

ENTRYPOINT ["/bin/entrypoint.sh"]
