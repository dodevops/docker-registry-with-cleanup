ARG REGISTRY_VERSION=latest
FROM registry:${REGISTRY_VERSION}

ENV CLEANUP_CRON="0 0 * * *"

RUN apk add --update-cache \
    curl \
    bash \
  && rm -rf /var/cache/apk/*

ADD registry_cleanup.sh /registry_cleanup.sh
COPY entrypoint.sh /entrypoint.sh