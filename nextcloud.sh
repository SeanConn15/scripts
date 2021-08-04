#!/bin/sh
code=$(curl -s -w %{http_code} -o /dev/null https://nextcloud.renraku-corpnet.com/)
if [ "$1" == "print" ]; then
    if [ "$code" == "500" ]; then
        exit 1
    else
        exit 0
    fi
else
    echo "Nextcloud status: $code"
fi
