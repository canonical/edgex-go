#!/bin/sh -e

SERVICE_ENV="$SNAP_DATA/config/$@/res/$@.env"

if [ -f "$SERVICE_ENV" ]; then
    source "$SERVICE_ENV"
fi

exec "$@"
