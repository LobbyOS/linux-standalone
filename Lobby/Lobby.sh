#!/bin/bash

# "hostname:port" where Lobby Server should be running
host="127.0.0.1:2020"

workingDir=$(dirname "$(readlink -f "$0")")

# The command and system call which may change the access permissions to file system objects (files and directories)
chmod 0755 "$workingDir/" -R

# If a server is already running, kill it and not Open Lobby
if "$workingDir/php/stop-server.sh"; then
  exit
fi

"$workingDir/php/start-server.sh" "$host" > /dev/null &

# Inser Icon Entry for the Lobby.desktop file
sed -i -e "s,Icon=.*,Icon=$PWD/lib/logo.svg,g" "$workingDir/Lobby.desktop"

# Inser Icon Entry for the LobbyServerStop.desktop file
sed -i -e "s,Icon=.*,Icon=$PWD/lib/logo-stop.svg,g" "$workingDir/LobbyServerStop.desktop"

xdg-open "http://$host"
