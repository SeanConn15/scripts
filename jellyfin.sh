#!/bin/sh
health=$(curl https://jellyfin.renraku-corpnet.com/health 2>/dev/null)

if [ "$health" == "Healthy" ]; then
    echo "Jellyfin Server is healthy"
else
    echo "Jellyfin Server is not healthy. Error: $health"
fi
