#!/bin/sh
set -eu

CONF=/etc/sentinel.conf

if [ ! -f "$CONF" ]; then
  cat > "$CONF" <<EOF
port ${SENTINEL_PORT}
bind 127.0.0.1
protected-mode yes

sentinel monitor mymaster 127.0.0.1 6379 2
sentinel down-after-milliseconds mymaster 5000
sentinel failover-timeout mymaster 15000
sentinel parallel-syncs mymaster 1

sentinel announce-ip 127.0.0.1
sentinel announce-port ${SENTINEL_PORT}
EOF
fi

exec redis-server "$CONF" --sentinel