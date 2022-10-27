#!/bin/sh

set -e

/usr/sbin/crond
echo "${CLEANUP_CRON}  /registry_cleanup.sh >/var/log/cleanup.log 2>&1" >> /etc/crontabs/root

case "$1" in
    *.yaml|*.yml) set -- registry serve "$@" ;;
    serve|garbage-collect|help|-*) set -- registry "$@" ;;
esac

exec "$@"