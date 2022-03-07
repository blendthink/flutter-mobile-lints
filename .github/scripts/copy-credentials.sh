#!/usr/bin/env bash

mkdir -p ~/.pub-cache
cat <<EOF > ~/.pub-cache/credentials.json
$PUB_CREDENTIALS
EOF
