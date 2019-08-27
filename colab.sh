#!/usr/bin/env bash
source <(curl -s https://raw.githubusercontent.com/paperbenni/bash/master/import.sh)
pb ngrok
rungrok http 8443 --log=stdout &
curl -sSL https://github.com/cdr/code-server/releases/download/1.1119-vsc1.33.1/code-server1.1119-vsc1.33.1-linux-x64.tar.gz | tar -xvz
./code-server1.1119-vsc1.33.1-linux-x64/code-server --allow-http --no-auth
echo "code server adress: "
getgrok http
getgrok https
