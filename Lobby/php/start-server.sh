#!/bin/bash

# The path to Lobby folder
workingDir=$(dirname "$(readlink -f "$0")")
workingDir="$workingDir/.."

# Set Document Root
cd "$workingDir/lobby"

# Run PHP Server
"$workingDir/php/php" -t "$workingDir/lobby" -c "$workingDir/php/php.ini" -S "$1" "index.php" "LobbyPHPCliServer"
