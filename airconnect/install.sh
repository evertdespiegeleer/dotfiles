#!/bin/sh

# If /usr/bin/airupnp is not found, try to find it in the system path.
if [[ ! -a "$HOME/bin/airupnp" ]]
then
    echo "  Installing AirConnect..."
    curl -s https://api.github.com/repos/philippe44/AirConnect/releases/latest | jq '.assets[].browser_download_url' --raw-output > /tmp/airconnect.txt
    wget $(cat /tmp/airconnect.txt) -O /tmp/airconnect.zip
    unzip /tmp/airconnect.zip -d /tmp/airconnect
    chmod +x /tmp/airconnect/airupnp-macos-static
    mv /tmp/airconnect/airupnp-macos-static $HOME/bin/airupnp
fi
