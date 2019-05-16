#!/bin/sh -e

chown -R $PUID:$PGID /etc/grafana
chmod -R a+r /etc/grafana
chown -R $PUID:$PGID /var/lib/grafana
chown -R $PUID:$PGID /usr/share/grafana

set -- /run.sh "%@"

exec "$@"
