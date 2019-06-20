#!/usr/bin/env bash
source <(curl -s https://raw.githubusercontent.com/paperbenni/bash/master/import.sh)
pb ngrok
curl -sSL https://github.com/cdr/code-server/releases/download/1.1119-vsc1.33.1/code-server1.1119-vsc1.33.1-linux-x64.tar.gz | tar -xvz
wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip &> /dev/null
unzip ngrok-stable-linux-amd64.zip
./ngrok http 8443 --log=stdout &> /dev/null & ./code-server1.1119-vsc1.33.1-linux-x64/code-server --allow-http --no-auth / &> /dev/null &
echo "code server adress: "
getgrok http
getgrok https
