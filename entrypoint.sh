#!/bin/sh

set -e

echo "${CLEANUP_CRON}  /registry_cleanup.sh >/var/log/cleanup.log 2>&1" >> /etc/crontabs/root
/usr/sbin/crond

case "$1" in
    *.yaml|*.yml) set -- registry serve "$@" ;;
    serve|garbage-collect|help|-*) set -- registry "$@" ;;
esac

exec "$@"
