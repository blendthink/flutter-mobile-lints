#!/usr/bin/env bash

mkdir -p ~/Library/Application\ Support/dart
cat <<EOF > ~/Library/Application\ Support/dart/pub-credentials.json
$PUB_CREDENTIALS
EOF
